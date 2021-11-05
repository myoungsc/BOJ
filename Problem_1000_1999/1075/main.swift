//
//  main.swift
//  1075
//
//  Created by 명수창 on 2021/11/05.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!
let f = Int(readLine()!)!
var removeN = (n / 100) * 100
var res = 0
for i in 0 ... 99 {
    let temp = removeN + i
    if temp % f == 0 {
        res = i
        break
    }
}
print(res < 10 ? "0\(res)" : "\(res)")
