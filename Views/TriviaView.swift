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
        ZStack {
            Color.blue.opacity(0.7)
            Color.black.opacity(0.7)
            
            VStack(spacing: 10) {
                Section {
                    HStack {
                        Image(systemName: "brain.head.profile")
                            .font(.system(size: 30))
                        
                        
                        Text(trivia.category)
                            .fontWeight(.semibold)
                            .font(Font.system(size: 23, design: .monospaced))
                            .allowsTightening(true)
                            .multilineTextAlignment(.center)
                        
                    }
                    Text(trivia.difficulty)
                        .font(.headline)
                        .multilineTextAlignment(.trailing)
                    
                }
                .frame(maxWidth: .infinity)
                .background(.cyan.opacity(0.35))
                .background(.gray)
                .foregroundColor(.white)
                
                Text("Question:")
                    .foregroundColor(.white)
                    .padding(20)
                
                Text(trivia.question)
                    .font(Font.system(size: 25, design: .monospaced))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(40)
                    .allowsTightening(true)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.5)
                
                Spacer()
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "1.circle.fill")
                        
                        Text(trivia.incorrect_answers[0])
                            .background(.white)
                            .font(Font.system(size: 18, design: .monospaced))
                            .cornerRadius(.infinity)
                            .padding(5)
                    }
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "2.circle.fill")
                        Text(trivia.correct_answer)
                            .background(.white)
                            .font(Font.system(size: 18, design: .monospaced))
                            .cornerRadius(.infinity)
                            .padding(5)
                    }
                }
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "3.circle.fill")
                        Text(trivia.incorrect_answers[1])
                            .background(.white)
                            .font(Font.system(size: 18, design: .monospaced))
                            .cornerRadius(.infinity)
                            .padding(5)
                    }
                }
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "4.circle.fill")
                        Text(trivia.incorrect_answers[2])
                            .background(.white)
                            .font(Font.system(size: 18, design: .monospaced))
                            .cornerRadius(.infinity)
                            .padding(10)
                        
                    }
                }
                Spacer()
            }
        }
    }
    
    //  func wrongAnswer() {
    //
    //      let button: UIButton
    //
    //      button.isSelected = true
    //      button.backgroundColor = UIColor.red
    //        }
}



struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView(trivia: Result.dummyData.first!)
    }
}
