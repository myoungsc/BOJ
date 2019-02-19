//
//  main.swift
//  2563
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var array = Array(repeating: Array(repeating: 0, count: 100), count: 100)
var count = 0
if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            for i in value[0] ..< value[0] + 10 {
                for j in value[1] ..< value[1] + 10 {
                    if array[i][j] != 1 {
                        array[i][j] = 1
                        count += 1
                    }
                }
            }
        }
    }
    print(count)
}
