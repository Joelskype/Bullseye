//
//  GamePage.swift
//  Bullseye
//
//  Created by Алексей Ряжев on 1/12/25.
//


import XCTest
@testable import Bullseye

class BullseyePage {
    
    private let game : Game
    
    init() {
        self.game = Game()
    }
    
    func points(_ sliderValue: Int) -> Int {
        game.points(sliderValue)
    }
}
