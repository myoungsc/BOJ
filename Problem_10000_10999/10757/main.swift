//
//  main.swift
//  10757
//
//  Created by myoung on 2021/01/04.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

var a: [Character] = [], b: [Character] = []
if let input = readLine() {
    let temp = input.split{ $0 == " " }.map{ String($0) }
    a = Array(temp[0])
    b = Array(temp[1])
}

let index = a.count > b.count ? a.count : b.count
var res: [String] = []
var nextValue: Int = 0

for _ in (0 ..< index).reversed() {
    var aLastChar: Character = "0"
    var bLastChar: Character = "0"
    
    if a.count > 0 { aLastChar = a.removeLast() }
    if b.count > 0 { bLastChar = b.removeLast() }
    
    if let aLast = Int(String(aLastChar)), let bLast = Int(String(bLastChar)) {
        let value = aLast + bLast + nextValue
        if value >= 10 {
            nextValue = 1
        } else {
            nextValue = 0
        }
        res.insert(String(value%10), at: 0)
    }
}
if nextValue != 0 {
    res.insert("1", at: 0)
}
print(res.joined())
