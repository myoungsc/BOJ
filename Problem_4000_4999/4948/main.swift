//
//  main.swift
//  4948
//
//  Created by myoung on 2021/01/07.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

var arr: [Bool] = [false, false] + Array(repeating: true, count: 123456*2+1)
for i in 2 ..< arr.count {
    if arr[i] == false {
        continue
    }
    for j in stride(from: i+i, to: arr.count, by: i) {
        arr[j] = false
    }
}

while true {
    if let input = readLine(), let n = Int(input) {
        if n == 0 { break }
        if n == 1 {
            print(1)
            continue
        }
        var count = 0
        for i in n + 1 ... n * 2 {
            if arr[i] { count += 1 }
        }
        print(count)
    }
}
