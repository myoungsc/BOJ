//
//  main.swift
//  5361
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let price: [Double] = [350.34, 230.90, 190.55, 125.30, 180.90]
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            
            let values = input.split{ $0 == " " }.map{ Double($0) ?? 0 }
            
            var res = 0.0
            for i in 0 ..< values.count {
                res += price[i] * values[i]
            }
            
            print("$" + String(format: "%.2f", res))
        }
    }
}
