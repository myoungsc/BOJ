//
//  main.swift
//  2562
//
//  Created by myoung on 05/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var max = 0, order = 1
for i in 1 ... 9 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        if max < n {
            max = n
            order = i
        }
    }
}
print(max)
print(order)
