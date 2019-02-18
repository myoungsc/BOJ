//
//  main.swift
//  5533
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var array: [[Int]] = []
    var score: [Int] = Array(repeating: 0, count: n+1)
    
    for _ in 0 ..< n {
        if let input = readLine() {
            array.append(input.split{ $0 == " " }.map{ Int($0) ?? 0 })
        }
    }
    for i in 0 ..< 3 {
        for j in 0 ..< n {
            var flag = true
            for k in 0 ..< n {
                if j != k && array[j][i] == array[k][i] { flag = false }
            }
            if flag { score[j] += array[j][i] }
        }
    }
    
    for i in 0 ..< n {
        print(score[i])
    }
}
