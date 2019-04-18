//
//  main.swift
//  2578
//
//  Created by myoung on 16/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var binggo = Array(repeating: Array(repeating: 0, count: 5), count: 5)
var res = 0

func checkBinggo() -> Bool {
    
    var binggoCount = 0
    
    var diagonal = 0
    for i in 0 ..< 5 { if binggo[i][i] == 0 { diagonal += 1 } }
    if diagonal == 5 { binggoCount += 1 }
    
    var diagonal2 = 0
    for i in 0 ..< 5 { if binggo[i][4-i] == 0 { diagonal2 += 1 } }
    if diagonal2 == 5 { binggoCount += 1 }
    
    for i in 0 ..< 5 {
        var horizon = 0, vertical = 0
        for j in 0 ..< 5 {
            if binggo[i][j] == 0 { horizon += 1 }
            if binggo[j][i] == 0 { vertical += 1 }
        }
        if horizon == 5 { binggoCount += 1 }
        if vertical == 5 { binggoCount += 1 }
    }
    return binggoCount >= 3 ? true : false
}

func binggoGame() {
    for _ in 0 ..< 5 {
        if let input = readLine() {
            let arr = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            for element in arr {
                for i in 0 ..< 5 {
                    for j in 0 ..< 5 {
                        if binggo[i][j] == element {
                            binggo[i][j] = 0
                            res += 1
                        }
                    }
                }
                if checkBinggo() {
                    print(res)
                    return
                }
            }
        }
    }
}

for i in 0 ..< 5 {
    if let input = readLine() {
        binggo[i] = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    }
}

binggoGame()
