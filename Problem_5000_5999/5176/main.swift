//
//  main.swift
//  5176
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            var res = 0
            var seats = Array(repeating: false, count: value[1])
            for _ in 0 ..< value[0] {
                if let input = readLine() {
                    let wantSeat = Int(input) ?? 0
                    if seats[wantSeat-1] == false {
                        seats[wantSeat-1] = true
                    } else {
                        res += 1
                    }
                }
            }
            print(res)
        }
    }
}
