//
//  main.swift
//  1436
//
//  Created by myoung on 2021/01/12.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

func checkNumber(_ k: Int) -> Bool {
    var number = k, digit = 1, diviNum = k, count = 0
    while true {
        number = number / 10
        if number == 0 { break }
        digit += 1
    }
    
    for _ in 0 ..< digit {
        if diviNum % 10 == 6 {
            count += 1
        } else {
            count = 0
        }
        if count == 3 { break }
        diviNum = diviNum / 10
    }
    return count == 3
}

if let input = readLine(), let n = Int(input) {
    
    var count = 0, number = 666
    while true {
        if checkNumber(number) {
            count += 1
        }
        if count == n {
            print(number)
            break
        }
        number += 1
    }
}
