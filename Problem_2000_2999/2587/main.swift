//
//  main.swift
//  2587
//
//  Created by myoung on 07/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var average = 0
var count: [Int] = []
for _ in 0 ..< 5 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        average += n
        count.append(n)
    }
}
print(average/5)
print(count.sorted()[5/2])
