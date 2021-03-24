//
//  main.swift
//  1212
//
//  Created by 명수창 on 2021/03/24.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var res = ""
    if input == "0" {
        print(0)
    } else {
        for (i, char) in input.enumerated() {
            let n = Int(String(char))!
            let str = String(n, radix: 2)
            var joinStr = ""
            if i != 0 {
                joinStr = Array(repeating: "0", count: 3-str.count).joined()
            }
            res += joinStr + str
        }
        print(res)
    }
}


