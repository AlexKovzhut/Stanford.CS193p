//
//  ContentView.swift
//  Memorize
//
//  Created by Alexander Kovzhut on 20.08.2023.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        self.viewModel.choose(card: card)
                    }
            }
        }
        .font(Font.largeTitle)
        .padding()
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.white)
                
                RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 3.0)
                
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
