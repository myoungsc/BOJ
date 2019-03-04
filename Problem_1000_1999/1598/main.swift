//
//  main.swift
//  1598
//
//  Created by myoung on 04/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let max = value.max() ?? 0, min = value.min() ?? 0
    if max == min {
        print(0)
    } else {
        let horizon = Int(ceil(Double(max) / 4.0) - ceil(Double(min) / 4.0))
        let tempA = max%4 == 0 ? 4 : max%4, tempB = min%4 == 0 ? 4 : min%4
        let vertical = tempA > tempB ? tempA-tempB : tempB-tempA
        print(horizon+vertical)
    }
}
