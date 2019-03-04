//
//  main.swift
//  9093
//
//  Created by myoung on 04/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            print(input.split{ $0 == " " }.map{ String($0).reversed() }.map{ String($0) }.joined(separator: " "))
        }
    }
}
