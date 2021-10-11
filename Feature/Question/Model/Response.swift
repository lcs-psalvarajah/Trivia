//
//  Response.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-07.
//

import Foundation

struct Response: Codable {
    
    let response_code: Int
    let results: [Result]
    
}



