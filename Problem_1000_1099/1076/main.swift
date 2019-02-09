//
//  main.swift
//  1076
//
//  Created by myoung on 09/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func mutiple(_ position: Int) -> Int {
    var res = 1
    for _ in 0 ..< position { res *= 10 }
    return res
}

let mapping = ["black": 0, "brown": 1, "red": 2, "orange": 3, "yellow": 4, "green": 5, "blue": 6, "violet": 7, "grey": 8, "white": 9]

var a = "", b = "", c = ""
if let input = readLine() { a = input }
if let input = readLine() { b = input }
if let input = readLine() { c = input }

let temp = ((mapping[a] ?? 0) * 10) + (mapping[b] ?? 0)
print(temp * mutiple(mapping[c] ?? 0))

