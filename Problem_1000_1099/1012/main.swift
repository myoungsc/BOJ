//
//  main.swift
//  1012
//
//  Created by myoung on 08/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var dx = [0, 0, 1, -1]
var dy = [1, -1, 0, 0]

var visit: [[Bool]] = []
var maps: [[Int]] = []

func dfs(_ x: Int, y: Int, m: Int, n: Int) {
    for i in 0 ..< 4 {
        let nx = x+dx[i]
        let ny = y+dy[i]
        
        if nx < 0 || nx >= m || ny < 0 || ny >= n { continue }
        
        if maps[nx][ny] == 1 && !visit[nx][ny] {
            visit[nx][ny] = true
            dfs(nx, y: ny, m: m, n: n)
        }
    }
}

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            
            var bugCount = 0
            visit = Array(repeating: Array(repeating: false, count: 50), count: 50)
            maps = Array(repeating: Array(repeating: 0, count: 50), count: 50)
            
            for _ in 0 ..< value[2] {
                if let input = readLine() {
                    let xy = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
                    maps[xy[0]][xy[1]] = 1
                }
            }
            
            for i in 0 ..< value[1] {
                for j in 0 ..< value[0] {
                    if maps[j][i] == 1 && !visit[j][i] {
                        bugCount += 1
                        visit[j][i] = true
                        dfs(j, y: i, m: value[0], n: value[1])
                    }
                }
            }
            print(bugCount)
        }
    }
}
