//
//  LoadingView.swift
//  Trivia
//
//  Created by Salvarajah, Prajina on 2021-10-12.
//

import SwiftUI

struct LoadingView: View {
    
    let text: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text("Fetching Questions")
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fetching Questions" )
    }
}
