//
//  main.swift
//  1934
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    var tempA = a, tempB = b
    while tempB != 0 {
        let r = tempA % tempB
        tempA = tempB
        tempB = r
    }
    return tempA
}

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            print(value[0]*value[1]/gcd(value[0],value[1]))
        }
    }
}
