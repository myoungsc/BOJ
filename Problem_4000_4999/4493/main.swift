//
//  main.swift
//  4493
//
//  Created by myoung on 21/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for _ in 0 ..< (Int(input) ?? 0) {
        if let input = readLine() {
            var player1 = 0, player2 = 0
            for _ in 0 ..< (Int(input) ?? 0) {
                if let input = readLine() {
                    let value = input.split{ $0 == " "}.map{ String($0) }
                    
                    if value[0] == "R" && value[1] == "S" || value[0] == "P" && value[1] == "R" || value[0] == "S" && value[1] == "P" {
                        player1 += 1
                    } else if value[0] == "P" && value[1] == "S" || value[0] == "S" && value[1] == "R" || value[0] == "R" && value[1] == "P" {
                        player2 += 1
                    }
                }
            }
            print(player1 == player2 ? "TIE" : player1 > player2 ? "Player 1" : "Player 2")
        }
    }
}

/* 개선전
func calculator(_ player1: String, player2: String) -> Int {
    var res = 0
    switch player1 {
    case "R":
        if player2 == "P" {
            res = 2
        } else if player2 == "S" {
            res = 1
        }
    case "P":
        if player2 == "S" {
            res = 2
        } else if player2 == "R" {
            res = 1
        }
    case "S":
        if player2 == "R" {
            res = 2
        } else if player2 == "P" {
            res = 1
        }
    default: break
    }
    return res
}

if let input = readLine() {
    for _ in 0 ..< (Int(input) ?? 0) {
        if let input = readLine() {
            var player1 = 0, player2 = 0
            for _ in 0 ..< (Int(input) ?? 0) {
                if let input = readLine() {
                    let value = input.split{ $0 == " "}.map{ String($0) }
                    let res = calculator(value[0], player2: value[1])
                    if res == 1 {
                        player1 += 1
                    } else if res == 2 {
                        player2 += 1
                    }
                }
            }
            print(player1 == player2 ? "TIE" : player1 > player2 ? "Player 1" : "Player 2")
        }
    }
}
*/
