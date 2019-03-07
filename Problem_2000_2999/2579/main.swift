//
//  main.swift
//  2579
//
//  Created by myoung on 07/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var a: [Int] = Array(repeating: 0, count: 301)
if let input = readLine() {
    let n = Int(input) ?? 0
    var sums: [Int] = Array(repeating: 0, count: 301)
    for i in 0 ..< n {
        if let input = readLine() {
            a[i] = Int(input) ?? 0
        }
    }
    sums[0] = a[0]
    sums[1] = max(a[0] + a[1], a[1])
    sums[2] = max(a[0] + a[2], a[1]+a[2])
    if n > 3 {
        for i in 3 ..< n {
            sums[i] = max(sums[i-3] + a[i-1] + a[i] , sums[i-2] + a[i])
        }
    }
    print(sums[n-1])
}
