//
//  main.swift
//  1912
//
//  Created by myoung on 15/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var dp = Array(repeating: 0, count: n+1)
    var maxValue = 0
    if let input = readLine() {
        let arr = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        
        dp[0] = arr[0]
        maxValue = arr[0]
        for i in 1 ..< arr.count {
            dp[i] = max(arr[i], dp[i-1] + arr[i])
            maxValue = max(dp[i], maxValue)
        }
        print(maxValue)
    }
}
