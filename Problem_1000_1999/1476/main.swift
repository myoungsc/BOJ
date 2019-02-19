//
//  main.swift
//  1476
//
//  Created by myoung on 14/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let temp = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var earth = 0, sun = 0, moon = 0, year = 0
    while true {
        if earth == temp[0] && sun == temp[1] && moon == temp[2] {
            print(year)
            break
        }
        earth += 1
        sun += 1
        moon += 1
        year += 1
        if earth > 15 { earth = 1 }
        if sun > 28 { sun = 1 }
        if moon > 19 { moon = 1}
    }
}
