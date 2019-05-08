//
//  main.swift
//  5543
//
//  Created by myoung on 08/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var minBuger = 2000, minDrink = 2000
for _ in 0 ..< 3 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        if minBuger > n { minBuger = n }
    }
}
for _ in 0 ..< 2 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        if minDrink > n { minDrink = n }
    }
}
print(minBuger+minDrink-50)
