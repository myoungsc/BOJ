//
//  main.swift
//  2908
//
//  Created by myoung on 11/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var integers: [Int] = []
if let input = readLine() {
    integers = input.split { $0 == " " }.compactMap { Int($0) ?? 0 }
}

var reversIntegers: [Int] = []
for integer in integers {
    
    var temp = integer
    var revers = 0
    while temp != 0 {
        let integerA = temp % 10
        temp = temp/10
        revers = revers * 10 + integerA
    }
    reversIntegers.append(revers)
}
print(reversIntegers.max() ?? 0)
