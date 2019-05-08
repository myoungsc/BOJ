//
//  main.swift
//  5522
//
//  Created by myoung on 08/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var sum = 0
for _ in 0 ..< 5 {
    if let input = readLine() {
        sum += Int(input) ?? 0
    }
}
print(sum)
