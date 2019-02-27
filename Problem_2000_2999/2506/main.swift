//
//  main.swift
//  2506
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let _ = Int(input) ?? 0
    var flag = false
    var res = 0, score = 0
    if let input = readLine() {
        let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        for value in values {
            if value == 1 {
                if flag {
                    score += 1
                } else {
                    flag = true
                    score = 1
                }
                res += score
            } else {
                flag = false
                score = 0
            }
        }
    }
    print(res)
}
