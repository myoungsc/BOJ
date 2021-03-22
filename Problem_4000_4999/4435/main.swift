//
//  main.swift
//  4435
//
//  Created by myoung on 2020/06/01.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

func calScore(_ arr: [Int], _ score: [Int]) -> Int {
    var result = 0
    for i in 0 ..< arr.count {
        result += arr[i] * score[i]
    }
    return result
}

if let input = readLine() {
    let goodScore = [1, 2, 3, 3, 4, 10]
    let evilScore = [1, 2, 2, 2, 3, 5, 10]
    for i in 0 ..< Int(input)! {
        if let inputGood = readLine(), let inputEvil = readLine() {
            let good = inputGood.split{ $0 == " " }.map{ Int($0)! }
            let evil = inputEvil.split{ $0 == " "}.map{ Int($0)! }
            
            let goodSum = calScore(good, goodScore)
            let evilSum = calScore(evil, evilScore)
            
            if (goodSum == evilSum) {
                print("Battle \(i+1): No victor on this battle field")
            } else if (goodSum > evilSum) {
                print("Battle \(i+1): Good triumphs over Evil")
            } else {
                print("Battle \(i+1): Evil eradicates all trace of Good")
            }
        }
    }
}
