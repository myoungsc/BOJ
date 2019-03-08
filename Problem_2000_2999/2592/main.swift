//
//  main.swift
//  2592
//
//  Created by myoung on 08/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var average = 0
var count: [Int: Int] = [:]
for _ in 0 ..< 10 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        average += n
        count[n] = (count[n] ?? 0) + 1
    }
}
print(average/10)
print(count.max{ $0.value < $1.value }?.key ?? 0)
