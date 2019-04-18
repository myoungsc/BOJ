//
//  main.swift
//  13301
//
//  Created by myoung on 18/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var arr: [Int] = [0, 1, 1]
for i in arr.count ... 80 {
    arr.append(arr[i-1] + arr[i-2])
}

if let input = readLine() {
    let n = Int(input) ?? 0
    let sum = (arr[n] * 2) + ((arr[n-1] + arr[n]) * 2)
    print(sum)
}

