//
//  main.swift
//  1371
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var res: [Character: Int] = ["a": 0, "b": 0, "c": 0, "d": 0, "e": 0, "f": 0, "g": 0, "h": 0, "i": 0,
                             "j": 0, "k": 0, "l": 0, "n": 0, "m": 0, "o": 0, "p": 0, "q": 0, "r": 0,
                             "s": 0, "t": 0, "u": 0, "v": 0, "w": 0, "x": 0, "y": 0, "z": 0]
while let input = readLine() {
    for element in input {
        if var count = res[element] {
            count += 1
            res[element] = count
        }
    }
}
let value = Array(res.values).max() ?? 0
print(Array(res.filter{ $0.value == value }.keys).sorted().map{ String($0) }.joined())
