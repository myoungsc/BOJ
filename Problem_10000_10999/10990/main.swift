//
//  main.swift
//  10990
//
//  Created by 명수창 on 2021/11/11.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!
var minusCount = n-1
var res = ""
for i in 0 ..< n {
    for _ in 0 ..< minusCount { res += " " }
    res += "*"
    if i != 0 {
        for _ in 0 ..< (i-1)*2+1 {
            res += " "
        }
        res += "*"
    }
    minusCount -= 1
    print(res)
    res = ""
}
