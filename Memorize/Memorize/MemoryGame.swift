//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Kanyarat on 25/12/2566 BE.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}