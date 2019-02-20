//
//  main.swift
//  2309
//
//  Created by myoung on 20/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var arr: [Int] = []
for _ in 0 ..< 9 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        arr.append(n)
    }
}
let allSum = arr.reduce(0, +)
let interval = allSum-100
for i in 0 ..< 8 {
    var sum = 0
    for j in i+1 ..< 9 {
        if interval == arr[i] + arr[j] {
            sum = arr[i] + arr[j]
            arr.remove(at: j)
            arr.remove(at: i)
            break
        }
    }
    if interval == sum {
        arr = arr.sorted()
        break
    }
}

for element in arr {
    print(element)
}
