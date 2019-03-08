//
//  main.swift
//  2669
//
//  Created by myoung on 08/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var array = Array(repeating: Array(repeating: 0, count: 101), count: 101)
var sum = 0
for _ in 0 ..< 4 {
    if let input = readLine() {
        let coord = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        for i in coord[0] ..< coord[2] {
            for j in coord[1] ..< coord[3] {
                if array[i][j] == 0 {
                    sum += 1
                    array[i][j] = 1
                }
            }
        }
    }
}
print(sum)
