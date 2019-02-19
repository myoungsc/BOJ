//
//  main.swift
//  1977
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var n = 0, m = 0
if let input = readLine() {
    n = Int(input) ?? 0
}
if let input = readLine() {
    m = Int(input) ?? 0
}
var min = -1, sum = 0
var flag = true
for i in n ... m {
    for j in 1 ... 100 {
        if j*j == i && flag {
            sum += i
            min = i
            flag = false
        } else if j*j == i && !flag {
            sum += i
        }
    }
}
if min == -1 {
    print(min)
} else {
    print(sum)
    print(min)
}
