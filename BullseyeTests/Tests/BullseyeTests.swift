//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Алексей Ряжев on 1/9/25.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game : Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(guess)
        
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(guess)
        
        XCTAssertEqual(score, 95)
    }
    
    func testStartNewRound() {
        
        game.startNewRound(100)
        
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
        
    }
    
    func testScoreExact() {
        let guess = game.target
        let score = game.points(guess)
        
        XCTAssertEqual(score, 200)
    }
    
    func testScoreClose() {
        let guess = game.target + 2
        let score = game.points(guess)
        
        XCTAssertEqual(score, 98 + 50)
    }
    
    func testRestart() {
        game.restart()
        XCTAssertEqual(game.score, 0)
        XCTAssertEqual(game.round, 1)
    }
    
    func testLeaderboard() {
        game.startNewRound(100)
        XCTAssertEqual(game.leaderboardEntries.count, 1)
        XCTAssertEqual(game.leaderboardEntries[0].score, 100)
        game.startNewRound(200)
        XCTAssertEqual(game.leaderboardEntries.count, 2)
        XCTAssertEqual(game.leaderboardEntries[0].score, 200)
        XCTAssertEqual(game.leaderboardEntries[1].score, 100)

    }
}


//class BullseyeTests: XCTestCase {
//    
//    func testGame() {
//        
//        let game = Game()
//        
//        let result = game.points(-1)
//        
//        XCTAssertTrue(result >= 0)
//        print(result)
//    }
//    
//}
    

