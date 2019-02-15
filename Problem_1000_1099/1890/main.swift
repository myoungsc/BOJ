//
//  main.swift
//  1890
//
//  Created by myoung on 15/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var n = 0
if let input = readLine() {
    n = Int(input) ?? 0
}

var map: [[Int]] = Array(repeating: Array(repeating: 0, count: 101), count: 101)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: 101), count: 101)
var moveDp: [[UInt64]] = Array(repeating: Array(repeating: 0, count: 101), count: 101)

for i in 0 ..< n {
    if let input = readLine() {
        let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        for j in 0 ..< values.count {
            map[i][j] = values[j]
        }
    }
}

moveDp[0][0] = 1
visited[0][0] = true

for i in 0 ..< n {
    for j in 0 ..< n {
        if !visited[i][j] { continue }
        if i == n-1 && j == n-1 { break }
        
        let jump = map[i][j]
        
        if i+jump < n {
            moveDp[i+jump][j] += moveDp[i][j]
            visited[i+jump][j] = true
        }
        
        if j+jump < n {
            moveDp[i][j+jump] += moveDp[i][j]
            visited[i][j+jump] = true
        }
    }
}

print(moveDp[n-1][n-1])
