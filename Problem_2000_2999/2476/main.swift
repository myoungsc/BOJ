//
//  main.swift
//  2476
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func cal(_ arr: [Int]) -> Int {
    let score = Array(Set(arr))
    var res = 0
    if score.count == 1 {
        res = 10000 + arr[0] * 1000
    } else if score.count == 2 {
        let temp = arr.filter{ $0 == score[0] }.count
        res = 1000 + (temp == 2 ? score[0] : score[1]) * 100
    } else {
        res = 100 * (arr.max() ?? 0)
    }
    return res
}

if let input = readLine() {
    let n = Int(input) ?? 0
    var maxScore = 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let temp = cal(input.split{ $0 == " "}.map{ Int($0) ?? 0 })
            maxScore = maxScore < temp ? temp : maxScore
        }
    }
    print(maxScore)
}
