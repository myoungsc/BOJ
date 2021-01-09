//
//  main.swift
//  9020
//
//  Created by myoung on 2021/01/08.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

var prime: [Bool] = [false, false] + Array(repeating: true, count: 10000)

for i in 2 ..< prime.count {
    if prime[i] == false { continue }
    for j in stride(from: i+i, to: prime.count, by: i)  {
        prime[j] = false
    }
}

if let input = readLine(), let n = Int(input) {
    for _ in 0 ..< n {
        if let input2 = readLine(), let count = Int(input2) {
            for i in count/2 ..< count {
                if !prime[i] {
                    continue
                }
                
                let b = count - i
                if !prime[b] {
                    continue
                }
                print("\(b) \(i)")
                break
            }
        }
    }
}
