//
//  main.swift
//  1094
//
//  Created by myoung on 09/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func makeruler(_ x: Int) -> Int {
    var maxCm = 64, xCm = x, count = 0
    while xCm > 0 {
        if xCm < maxCm {
            maxCm = maxCm / 2
        } else if xCm > maxCm {
            count += 1
            xCm = xCm-maxCm
            maxCm = maxCm / 2
        } else {
            count += 1
            xCm = 0
        }
    }
    return count
}

if let input = readLine() {
    let x = Int(input) ?? 0
    print(makeruler(x))
}
