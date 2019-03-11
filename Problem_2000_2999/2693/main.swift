//
//  main.swift
//  2693
//
//  Created by myoung on 11/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let redius = Int(input) ?? 0
    let n = 3
    for _ in 0 ..< redius {
        if let input = readLine() {
            let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.sorted()
            print(values[values.count-n])
        }
    }
}
