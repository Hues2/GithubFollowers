//
//  Follower.swift
//  GithubFollowers
//
//  Created by Greg Ross on 31/08/2022.
//

import Foundation


struct Follower: Codable, Hashable{
    let login: String
    let avatarUrl: String
    
    
    enum CodingKeys: String, CodingKey{
        case login = "login"
        case avatarUrl = "avatar_url"
    }
}

