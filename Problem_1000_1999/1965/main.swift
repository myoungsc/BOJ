//
//  main.swift
//  1965
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let _ = Int(input) ?? 0
    var dp = Array(repeating: 1, count: 1001)
    if let input = readLine() {
        let boxs = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        for i in 0 ..< boxs.count {
            for j in 0 ... i {
                if boxs[i] > boxs[j] && dp[j] + 1 > dp[i] {
                    dp[i] = dp[j] + 1
                }
            }
        }
        print(dp.max() ?? 0)
    }
}
