//
//  main.swift
//  3059
//
//  Created by myoung on 14/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        var alphabet: Set<Character> = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
                                        "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        if let input = readLine() {
            let value = Set(input).sorted()
            for element in value.reversed() {
                alphabet.remove(element)
            }
            let res = alphabet.map{ $0.unicodeScalars.first?.value ?? 0 }.reduce(0, +)
            print(res)
        }
    }
}
