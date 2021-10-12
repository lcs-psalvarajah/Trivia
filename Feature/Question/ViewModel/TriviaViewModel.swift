//
//  TriviaViewModel.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-07.
//

import Foundation


protocol TriviaViewModel: ObservableObject {
    func getRandomTriviaQuestions() async
}


@MainActor
final class TriviaViewModelImpl: TriviaViewModel {
    
    @Published private(set) var triviaResponses: [Response] = []
    
    private let service: TriviaService
    
    init(service: TriviaService) {
        self.service = service
    }
    
    func getRandomTriviaQuestions() async {
        do {
            let response = try await service.fetchRandomTriviaQuestions()
            
            triviaResponses.append(response)
        } catch {
            print(error)
        }
    }
}


