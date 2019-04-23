//
//  main.swift
//  3058
//
//  Created by myoung on 23/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.filter{ $0 % 2 == 0 }
            print("\(values.reduce(0, +)) \(values.min() ?? 0)")
        }
    }
}
