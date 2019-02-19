//
//  main.swift
//  1003
//
//  Created by myoung on 08/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var zeroCount = 0
var oneCount = 0
var fibonaccis: [Int] = [Int](repeating: -1, count: 41)

func fibonacci(_ n: Int) -> Int {
    if fibonaccis[n] != -1 { return fibonaccis[n] }
    if n == 0 {
        fibonaccis[n] = 0
        return 0
    } else if n == 1 {
        fibonaccis[n] = 1
        return 1
    } else {
        fibonaccis[n] = fibonacci(n-1) + fibonacci(n-2)
        return fibonaccis[n]
    }
}

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input2 = readLine() {
            let temp = Int(input2) ?? 0
            if temp == 0 {
                print("1 0")
                continue
            }
            print("\(fibonacci(temp-1)) \(fibonacci(temp))")
        }
    }
}
