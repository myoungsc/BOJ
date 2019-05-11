//
//  main.swift
//  14726
//
//  Created by myoung on 11/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for _ in 0 ..< (Int(input) ?? 0) {
        var sum = 0
        if let input = readLine() {
            for (i, char) in input.enumerated() {
                if (i + 1) % 2 != 0 {
                    if var n = Int(String(char)) {
                        n = n * 2
                        sum += n < 10 ? n : (n / 10) + (n % 10)
                    }
                } else {
                    sum += Int(String(char)) ?? 0
                }
            }
        }
        print(sum % 10 == 0 ? "T" : "F")
    }
}
