//
//  main.swift
//  2935
//
//  Created by 명수창 on 2021/11/01.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let a = readLine()!
let o = readLine()!
let b = readLine()!

var res = ""
if o == "+" {
    let aCount = a.count, bCount = b.count
    let max = aCount > bCount ? a : b
    let min = aCount > bCount ? b : a
    
    if max.count == min.count {
        res = "2"
        for _ in 1 ..< max.count {
            res += "0"
        }
    } else {
        res = "1"
        for i in 1 ..< max.count {
            if max.count - i == min.count {
                res += "1"
            } else {
                res += "0"
            }
        }
    }
} else {
    res = "1"
    let zeroCount = a.count + b.count - 2
    for _ in 0 ..< zeroCount {
        res += "0"
    }
}
print(res)
