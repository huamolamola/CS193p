//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Kanyarat on 10/12/2566 BE.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewmodel: EmojiMemoryGame
    
    let emojis = ["👻", "🎃", "🐞", "😈", "💀", "🕸️", "🧙‍♀️", "😱", "👻", "🎃", "🐞", "😈", "💀", "🕸️", "🧙‍♀️", "😱"]
    
    var body: some View {
        ScrollView {
            cards
        }
                .padding()
            }
            
            var cards: some View {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 60))]){
                    ForEach(emojis.indices, id: \.self) {index in
                        CardView(content: emojis[index])
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .foregroundColor(.blue)
            }
        }
            
            
struct CardView: View {
    let content: String
    @State var isFaceUp = true
                
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.stroke(lineWidth: 2)
                Text(content) .font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}


struct EmojiMemoryGameView_Preview: PreviewProvider {
    static var preview: some View {
        EmojiMemoryGameView()
    }
}
