//
//  main.swift
//  1057
//
//  Created by myoung on 2021/01/19.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
    
    var temp = Array(repeating: false, count: arr[0])
    temp[arr[1]-1] = true
    temp[arr[2]-1] = true
    var round = 0
    var isEnd: Bool = false
    
    repeat {
        round += 1
        var nextRound: [Bool] = []
        for i in 0 ..< temp.count/2+1 {
            let count = i*2
            if count >= temp.count { break }
            if count+1 < temp.count && temp[count] && temp[count+1] {
                isEnd = true
                break
            }
            if count+1 < temp.count {
                if temp[count] || temp[count+1] {
                    nextRound.append(true)
                } else {
                    nextRound.append(false)
                }
            } else {
                nextRound.append(temp[count])
            }
        }
        temp = nextRound
    } while round != arr[0]/2+1 && !isEnd
    print(round)
}

//other solution
if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int(String($0))! }

    var player1 = arr[1]
    var player2 = arr[2]
    
    var count = 1
    
    while (player1+1)/2 != (player2+1)/2 {
        count += 1
        player1 -= player1/2
        player2 -= player2/2
    }
    print(count)
}
