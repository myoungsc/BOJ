//
//  main.swift
//  5554
//
//  Created by myoung on 09/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var sum = 0
for _ in 0 ..< 4 {
    if let input = readLine() {
        sum += Int(input) ?? 0
    }
}
print(sum/60)
print(sum%60)
