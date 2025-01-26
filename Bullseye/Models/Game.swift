//
//  Game.swift
//  Bullseye
//
//  Created by Алексей Ряжев on 1/11/25.
//

import Foundation


struct LeadeboardEntry {
    let score: Int
    let date: Date

}

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderboardEntries: [LeadeboardEntry] = []
    
    init(loadTestData: Bool = false) {
        if loadTestData {
            leaderboardEntries.append(LeadeboardEntry(score: 100, date: Date()))
            leaderboardEntries.append(LeadeboardEntry(score: 23, date: Date()))
            leaderboardEntries.append(LeadeboardEntry(score: 104, date: Date()))
            leaderboardEntries.append(LeadeboardEntry(score: 45, date: Date()))
            leaderboardEntries.append(LeadeboardEntry(score: 32, date: Date()))

        }
    }
    
    func points(_ sliderValue: Int) -> Int {
        
        let difference = abs(target - sliderValue)
        let bonus: Int
        
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(_ points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderboard(points)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
    mutating func addToLeaderboard(_ point: Int) {
        leaderboardEntries.append(LeadeboardEntry(score: point, date: Date()))
        leaderboardEntries.sort { $0.score > $1.score}
    }
}



