//
//  GHUser.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru
//

import SwiftUI

struct GHUserView: View {
    @State private var user: GithubUser?
    
    var body: some View {
        VStack(spacing: 20){
            
            AsyncImage(url: URL(string: user?.avatarUrl ?? "")){image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(.circle)
            } placeholder: {
                Circle()
                    .foregroundColor(.secondary)
            }
            .frame(width: 120, height: 120)
            Text(user?.login ?? "Login placeholder")
                .bold()
                .font(.title3)
            Text(user?.bio ?? "This is where the user bio will go. Let's make it long enough so its spans two lines")
                .padding()
            Spacer()
        }
        .padding()
        .task {
            do{
                user  = try await getUser()
            } catch GithubError.invalidUrl{
                print("Invalid URL")
            } catch GithubError.invalidData{
                print("Invalid Data")
            }catch GithubError.invalidResponse{
                print("Invalid Response")
            }catch{
                print("Unexpected Error")
            }
        }
    }
    
    //API call using async/await
    func getUser() async throws -> GithubUser{
        let endpoint = "https://api.github.com/users/sallen0400"
        
        guard let url = URL(string: endpoint) else {
            throw GithubError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            throw GithubError.invalidResponse
        }
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(GithubUser.self, from: data)
        } catch  {
            throw GithubError.invalidData
        }
    }
}

#Preview {
    GHUserView()
}

enum GithubError: Error{
    case invalidUrl
    case invalidResponse
    case invalidData
}

struct GithubUser: Codable{
    let login: String
    let avatarUrl: String
    let bio: String
}
