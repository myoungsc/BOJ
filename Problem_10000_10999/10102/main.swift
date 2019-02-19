//
//  main.swift
//  10102
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    if let input = readLine() {
        let countA = Array(input).filter{ $0 == "A"}.count
        if countA == n-countA {
            print("Tie")
        } else {
            print(countA > n-countA ? "A" : "B")
        }
    }
}
