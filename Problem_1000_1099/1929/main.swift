//
//  main.swift
//  1929
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let temp = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let start = temp[0]
    let end = temp[1]
    
    var primeNumbers: [Int] = [0, 0]
    
    for i in 2 ... end {
        primeNumbers.append(i)
    }
    
    for i in 2 ..< primeNumbers.count {
        if primeNumbers[i] == 0 {
            continue
        }
        for j in stride(from: i+i, to: primeNumbers.count, by: i) {
            primeNumbers[j] = 0
        }
    }
    
    for primeNumber in primeNumbers {
        if primeNumber != 0 && primeNumber >= start {
            print(primeNumber)
        }
    }
}
