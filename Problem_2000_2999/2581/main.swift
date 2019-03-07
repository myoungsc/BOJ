//
//  main.swift
//  2581
//
//  Created by myoung on 07/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var max = 0, min = 0
if let input = readLine() { min = Int(input) ?? 0 }
if let input = readLine() { max = Int(input) ?? 0 }
var minPrime = max, sum = 0
var prime: [Int] = [0, 0]

if max > 1  {
    for i in 2 ... max {
        prime.append(i)
    }
    
    for i in 2 ..< max {
        if prime[i] == 0 { continue }
        for j in stride(from: i+i, to: prime.count, by: i) {
            prime[j] = 0
        }
    }
    
    for element in prime {
        if element != 0, element >= min {
            if element < minPrime {
                minPrime = element
            }
            sum += element
        }
    }
}

if sum != 0 {
    print(sum)
    print(minPrime)
} else {
    print(-1)
}
