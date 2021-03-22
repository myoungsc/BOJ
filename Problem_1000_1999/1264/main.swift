//
//  main.swift
//  1264
//
//  Created by myoung on 2021/01/24.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let dic = ["a": true, "A": true, "e": true, "E": true, "i": true, "I": true, "o": true, "O": true, "u": true, "U": true]

while true {
    if let input = readLine() {
        if input == "#" { break }
        var count = 0
        for char in input {
            if let isVowel = dic[String(char)], isVowel {
                count += 1
            }
        }
        print(count)
    }
}

