//
//  main.swift
//  10996
//
//  Created by myoung on 2020/05/26.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let x = Int(input) {
    for _ in 0 ..< x {
        var res = ""
        for j in 0 ..< x { // 짝수만
            if j % 2 == 0 {
                res += "*"
            } else {
                res += " "
            }
        }
        print(res)
        res = ""
        for k in 0 ..< x { // 홀수만
            if k % 2 == 0 {
                res += " "
            } else {
                res += "*"
            }
        }
        print(res)
    }
}
