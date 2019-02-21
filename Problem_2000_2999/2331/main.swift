//
//  main.swift
//  2331
//
//  Created by myoung on 21/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

import Foundation

if let input = readLine() {
    var array: [Double] = []
    let value = input.split{ $0 == " " }.map{ Double($0) ?? 0 }
    array.append(value[0])
    
    var index = 0
    while true {
        var next: Double = 0
        for char in String(array.last ?? 0) {
            next += pow(Double(String(char)) ?? 0.0, value[1])
        }
        if array.contains(next) {
            for (i, element) in array.enumerated() {
                if element == next {
                    index = i
                }
            }
            break
        }
        array.append(next)
    }
    print(index)
}
