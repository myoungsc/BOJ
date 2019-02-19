//
//  main.swift
//  1316
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var n = 0
if let input = readLine() {
    n = Int(input) ?? 0
}

var words: [String] = []
for _ in 0 ..< n {
    if let input = readLine() {
        words.append(input)
    }
}

var output = 0

for word in words {
    var arr: [Character] = [word.first ?? Character("")]
    var isContiue = true
    
    for char in word {
        let last = arr.last ?? Character("")
        if last != char {
            arr.append(char)
        }
    }
    
    repeat {
        let first = arr.removeFirst()
        if arr.contains(first) {
            isContiue = false
            continue
        }
    } while arr.count != 0
    
    if isContiue { output += 1 }
}
print(output)
