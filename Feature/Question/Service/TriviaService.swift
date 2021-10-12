//
//  TriviaService.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-07.
//

import Foundation

protocol TriviaService {
    
    func fetchRandomTriviaQuestions() async throws -> Response
    
}

final class TriviaServiceImpl: TriviaService {
    
    func fetchRandomTriviaQuestions() async throws -> Response {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseURL.appending("/api.php?amount=10&category=9&difficulty=easy&type=multiple"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode(Response.self, from: data)
    }
}

