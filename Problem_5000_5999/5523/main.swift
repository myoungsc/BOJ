//
//  main.swift
//  5523
//
//  Created by myoung on 15/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var res = [0, 0]
    for _ in 0 ..< (Int(input) ?? 0) {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            if value[0] != value[1] {
                res[value[0] > value[1] ? 0 : 1] += 1
            }
        }
    }
    print(res.map{ String($0) }.joined(separator: " "))
}
