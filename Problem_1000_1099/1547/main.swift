//
//  main.swift
//  1547
//
//  Created by myoung on 14/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var cups = [1, 2, 3]
    for _ in 0 ..< n {
        if let input = readLine() {
            let moves = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            let temp = cups[moves[0]-1]
            cups[moves[0]-1] = cups[moves[1]-1]
            cups[moves[1]-1] = temp
        }
    }
    for (i, cup) in cups.enumerated() {
        if cup == 1 { print(i+1) }
    }
}
