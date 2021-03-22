//
//  main.swift
//  2729
//
//  Created by myoung on 2021/01/25.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

func removeZero(_ str: [String]) -> String {
    var isZero = true
    var res = ""
    for char in str {
        if isZero {
            isZero = char != "1"
            if !isZero { res.append(char) }
        } else {
            res.append(char)
        }
    }
    return res == "" ? "0" : res
}

let n = Int(readLine()!)!
for _ in 0 ..< n {
    if let input = readLine() {
        let array = input.split{ $0 == " " }.map{ String($0) }
        var a = array[0], b = array[1]
        
        let count = a.count > b.count ? a.count : b.count
    
        var res: [String] = []
        var isOlim = false
        
        for _ in 0 ..< count {
            var tempA = "0", tempB = "0"
            if a.count > 0 { tempA = String(a.removeLast()) }
            if b.count > 0 { tempB = String(b.removeLast()) }
            if (tempA == "0" && tempB == "1") || (tempA == "1" && tempB == "0") {
                if isOlim {
                    res.insert("0", at: 0)
                } else {
                    res.insert("1", at: 0)
                }
            } else {
                if isOlim {
                    res.insert("1", at: 0)
                } else {
                    res.insert("0", at: 0)
                }
                isOlim = (tempA == "1" && tempB == "1")
            }
        }
        if isOlim { res.insert("1", at: 0)}
        print(removeZero(res))
    }
}
