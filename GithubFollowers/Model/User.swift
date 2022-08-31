//
//  User.swift
//  GithubFollowers
//
//  Created by Greg Ross on 31/08/2022.
//

import Foundation


struct User: Codable{
    let login: String
    let avatarUrl: String
    let name: String?
    let location: String?
    let bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: String
    
    
    enum CodingKeys: String, CodingKey{
        case login = "login"
        case avatarUrl = "avatar_url"
        case name = "name"
        case location = "location"
        case bio = "bio"
        case publicRepos = "public_repos"
        case publicGists = "public_gists"
        case htmlUrl = "html_url"
        case following = "following"
        case followers = "followers"
        case createdAt = "created_at"
    }    
}
