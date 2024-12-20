//
//  AssociatedTypeBootcamp.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru
//

import SwiftUI

protocol GameScore{
    associatedtype TeamScore
    
    func calculateWinner(teamOne: TeamScore, teamTwo: TeamScore) -> String
    func refreshTeamScores() -> (Int, Int)
}
struct FootballGame: GameScore{
    
    typealias TeamScore = Int
    
    func calculateWinner(teamOne: TeamScore, teamTwo: TeamScore) -> String {
        if teamOne > teamTwo{
            return "Team One wins!"
        }else if teamOne == teamTwo{
            return "The teams tied."
        }
        return "Team two wins"
    }
    func refreshTeamScores() -> (Int, Int){
        let valueOne = Int.random(in: 1..<50)
        let valueTwo = Int.random(in: 1..<50)
        
        return (valueOne, valueTwo)
    }
}

struct AssociatedTypeBootcamp: View {
   var game = FootballGame()
    @State private var team1 = Int.random(in: 1..<50)
    @State private var team2 = Int.random(in: 1..<50)
    @State private var winner = ""
    
    var body: some View {
        VStack(spacing: 20){
            HeaderView("AssociatedType", subtitle: "Introduction", desc: "When looking at Apple's documentation you see 'associatedtype' used a lot. It's a placeholder for a type that you assign when you adopt the protocol.")
            HStack(spacing: 40){
                Text("Team one: \(team1)")
                Text("Team two: \(team2)")
            }
            Button("Calculate Winner"){
                winner = game.calculateWinner(teamOne: team1, teamTwo: team2)
            }
            Text(winner)
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    AssociatedTypeBootcamp()
}
