//
//  main.swift
//  2445
//
//  Created by myoung on 25/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for i in 1 ... n {
        print(String(repeating: "*", count: i), terminator: "")
        print(String(repeating: " ", count: (n-i)*2), terminator: "")
        print(String(repeating: "*", count: i))
    }
    
    for i in 1 ... n {
        print(String(repeating: "*", count: n-i), terminator: "")
        print(String(repeating: " ", count: i*2), terminator: "")
        print(String(repeating: "*", count: n-i))
    }
}
