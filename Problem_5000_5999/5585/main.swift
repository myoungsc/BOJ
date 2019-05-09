//
//  main.swift
//  5585
//
//  Created by myoung on 09/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    let coins = [500, 100, 50, 10, 5, 1]
    var res = 1000 - n, count = 0
    
    for coin in coins {
        while res - coin >= 0 {
            res = res - coin
            count += 1
            if res == 0 {
                break
            }
        }
    }
    print(count)
}
