//
//  main.swift
//  11098
//
//  Created by myoung on 15/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for _ in 0 ..< (Int(input) ?? 0) {
        if let input = readLine() {
            let playerCount = Int(input) ?? 0
            var maxPrice: UInt64 = 0, maxPlayerName = ""
            for _ in 0 ..< playerCount {
                if let input = readLine() {
                    let value = input.split{ $0 == " " }.map{ String($0) }
                    if maxPrice < (UInt64(value[0]) ?? 0) {
                        maxPrice = UInt64(value[0]) ?? 0
                        maxPlayerName = value[1]
                    }
                }
            }
            print(maxPlayerName)
        }
    }
}
