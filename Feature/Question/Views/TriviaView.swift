//
//  TriviaView.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-07.
//

import SwiftUI

struct TriviaView: View {
    let item: Result
    
    var body: some View {
        VStack(spacing: 8) {
            Text("\(item.category)")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("\(item.difficulty)")
                .font(.headline)
            
            Text("\(item.question)")
                .font(.title)
                .fontWeight(.light)
            
Spacer()
            

                            Button(action: {}) {
                                Text("\(item.incorrect_answers.first!)")
                            }


            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("\(item.correct_answer)")
            }



            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Button")
            }

            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
            
            Spacer()
        }
    }
    
//    func possibleAnswers() {
//
//        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
//            Text("p")
//        }
    }


struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView(item: Result.dummyData.first!)
    }
}
