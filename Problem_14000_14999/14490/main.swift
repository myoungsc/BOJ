//
//  main.swift
//  14490
//
//  Created by myoung on 21/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func gcd(a: Int, b: Int) -> Int {
    var tempA = a, tempB = b
    while tempB != 0 {
        let temp = tempA % tempB
        tempA = tempB
        tempB = temp
    }
    return tempA
}

if let input = readLine() {
    let values = input.split{ $0 == ":" }.map{ Int($0) ?? 0 }
    let gcdValue = gcd(a: values[0], b: values[1])
    print("\(values[0]/gcdValue):\(values[1]/gcdValue)")
}
