//
//  TriviaView.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-07.
//

import SwiftUI

struct TriviaView: View {
    let trivia: Result
    
    var body: some View {
        VStack(spacing: 8) {
            Text(trivia.category)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(trivia.difficulty)
                .font(.headline)
            
            Text(trivia.question)
                .font(.title)
                .fontWeight(.light)
            
            Spacer()
            
            
            Button(action: {}) {
                Text(trivia.incorrect_answers[0])
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(trivia.correct_answer)
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(trivia.incorrect_answers[1])
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(trivia.incorrect_answers[2])
            }
            
            Spacer()
        }
    }
}


struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView(trivia: Result.dummyData.first!)
    }
}
