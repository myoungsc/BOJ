//
//  main.swift
//  2576
//
//  Created by myoung on 05/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var sum = 0, min = 0
for _ in 0 ..< 7 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        if n % 2 != 0 {
            if min == 0 {
                min = n
            } else if min > n {
                min = n
            }
            sum += n
        }
    }
}
if sum == 0 {
    print(-1)
} else {
    print(sum)
    print(min)
}
