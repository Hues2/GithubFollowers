//
//  ErrorMessage.swift
//  GithubFollowers
//
//  Created by Greg Ross on 31/08/2022.
//

import Foundation


enum GFError: String, Error{
    case invalidUsername = "This username create an invalid request, please try again."
    case unableToComplete = "Unable to complete your request. PLease check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "Data received from the server was invalid. Please try again"
}
