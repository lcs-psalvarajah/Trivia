//
//  TriviaScreen.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-07.
//

import SwiftUI

struct TriviaScreen: View {
    
    @StateObject private var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    
    var body: some View {
        VStack {
            if vm.triviaResponses.isEmpty {
                
                LoadingView(text: "Fetching Questions")
            } else {
                
                // code line issue
                
                TriviaView(trivia: vm.triviaResponses.last!.results.first!)
            }
        }
        .task {
            await vm.getRandomTriviaQuestions()
        }
    }
}

struct TriviaScreen_Previews: PreviewProvider {
    static var previews: some View {
        TriviaScreen()
    }
}
