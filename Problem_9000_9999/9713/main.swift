//
//  main.swift
//  9713
//
//  Created by myoung on 02/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let range = Int(input) ?? 0
    for _ in 0 ..< range {
        if let input = readLine() {
            var n = Int(input) ?? 0
            var sum = 0
            while n > 0 {
                sum += n
                n -= 2
            }
            print(sum)
        }
    }
}
