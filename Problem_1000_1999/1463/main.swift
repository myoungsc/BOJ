//
//  main.swift
//  1463
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var memo = [1:0, 2:1, 3:1]

func dp(_ n: Int) -> Int {
    
    var a = 0, b = 0
    while true {
        if memo.keys.contains(n) {
            break
        }
        if n % 3 == 0 {
            a = dp(n / 3) + 1
        } else if (n-1) % 3 == 0 {
            a = dp((n-1) / 3) + 2
        } else if (n-2) % 3 == 0 {
            a = dp((n-2) / 3) + 3
        }
        if n % 2 == 0 {
            b = dp(n / 2) + 1
        } else if (n-1) % 2 == 0 {
            b = dp((n-1) / 2) + 2
        }
        memo[n] = a < b ? a : b
    }
    
    return memo[n] ?? 0
}


if let input = readLine() {
    let n = Int(input) ?? 0
    print(dp(n))
}
