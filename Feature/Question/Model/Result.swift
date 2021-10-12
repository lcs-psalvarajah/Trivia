//
//  Result.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-07.
//

import Foundation

struct Result: Decodable {
    
    let category: String
    let type: String
    let difficulty: String
    let question: String
    let correct_answer: String
    let incorrect_answers: [String]
    
}

extension Result {
    static let dummyData: [Result] = [
    
        Result(category: "General Knowledge", type: "multiple", difficulty: "easy", question: "What is dabbing?", correct_answer: "A dance", incorrect_answers: ["A medical procdure", "A sport", "A language"]),
        Result(category: "General Knowledge", type: "multiple", difficulty: "easy", question: "What is on display in the Madame Tussaud&#039;s museum in London?", correct_answer: "Wax sculptures", incorrect_answers: ["Designer clothing", "Unreleased film reels", "Vintage cars"])
    ]
    
}
