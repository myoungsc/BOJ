//
//  main.swift
//  5613
//
//  Created by myoung on 25/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var res = 0
var array: [String] = []
while let input = readLine() {
    if input == "=" { break }
    array.append(input)
}

res = Int(array[0]) ?? 0
var property = ""
for (i, element) in array.enumerated() {
    if i == 0 { continue }
    switch element {
    case "+", "-", "*", "/": property = element
    default:
        if property == "+" {
            res += Int(element) ?? 0
        } else if property == "-" {
            res -= Int(element) ?? 0
        } else if property == "*" {
            res *= Int(element) ?? 0
        } else if property == "/" {
            res /= Int(element) ?? 0
        }
    }
}
print(res)
