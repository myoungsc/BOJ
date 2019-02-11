//
//  main.swift
//  1159
//
//  Created by myoung on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var dic: [Character: Int] = ["a": 0, "b": 0, "c": 0, "d": 0, "e": 0, "f": 0, "g": 0, "h": 0, "i": 0, "j": 0, "k": 0, "l": 0,
                                 "m": 0, "n": 0, "o": 0, "p": 0, "q": 0, "r": 0, "s": 0, "t": 0, "u": 0, "v": 0, "w": 0, "x": 0,
                                 "y": 0, "z": 0]
    for _ in 0 ..< n {
        if let input = readLine() {
            let char = input.first ?? " "
            if let count = dic[char] { dic[char] = count + 1 }
        }
    }
    let res = dic.filter{ $0.value >= 5 }.map{ String($0.key) }.sorted().joined()
    print(res.count == 0 ? "PREDAJA" : res)
}
