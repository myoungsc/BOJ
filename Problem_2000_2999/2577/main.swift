//
//  main.swift
//  2577
//
//  Created by myoung on 05/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var array: [Int] = [Int](repeating: 0, count: 10)
var a = 0, b = 0, c = 0

if let input = readLine() { a = Int(input) ?? 0}
if let input = readLine() { b = Int(input) ?? 0 }
if let input = readLine() { c = Int(input) ?? 0 }

let mutiple = "\(a*b*c)"

for char in mutiple {
    if let temp = Int(String(char)) {
        array[temp] = array[temp] + 1
    }
}

for value in array {
    print(value)
}
