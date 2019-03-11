//
//  main.swift
//  2702
//
//  Created by myoung on 11/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func gcd(_ a: Int, b: Int) -> Int {
    var tempA = a, tempB = b
    while tempB > 0 {
        let temp = tempA % tempB
        tempA = tempB
        tempB = temp
    }
    return tempA
}

func lcm(_ a: Int, b: Int) -> (lcm: Int, gcm: Int) {
    let value = gcd(a, b: b)
    return (a * b / value, value)
}

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let ab = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            let res = lcm(ab[0], b: ab[1])
            print("\(res.lcm) \(res.gcm)")
        }
    }
}
