//
//  main.swift
//  1453
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let _ = Int(input) ?? 0
    var seat = Array(repeating: false, count: 101)
    var res = 0
    
    if let input = readLine() {
        let customers = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        for customer in customers {
            if seat[customer-1] {
                res += 1
            } else {
                seat[customer-1] = true
            }
        }
    }
    print(res)
}
