//
//  main.swift
//  11047
//
//  Created by myoung on 05/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    
    var allPrice = value[1], res = 0
    var price: [Int] = []
    
    for _ in 0 ..< value[0] {
        if let input = readLine() {
            price.append(Int(input) ?? 0)
        }
    }
    
    var count = price.count-1
    while allPrice > 0 {
        if allPrice < price[count] {
            count -= 1
            continue
        }
        res += allPrice / price[count]
        allPrice = allPrice % price[count]
        count -= 1
    }
    print(res)
}
