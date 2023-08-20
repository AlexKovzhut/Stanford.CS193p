//
//  ContentView.swift
//  Memorize
//
//  Created by Alexander Kovzhut on 20.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) {  index in
                CardView(isFaceUp: true)
            }
        }
        .font(Font.largeTitle)
        .padding()
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.white)
                
                RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 3.0)
                
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
