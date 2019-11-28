//
//  main.swift
//  12605
//
//  Created by 명수창 on 06/11/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for i in 1 ... n {
        if let input = readLine() {
            let arr = input.split{ $0 == " "}.map{ String($0) }
            var res = ""
            for (j, str) in arr.enumerated().reversed() {
                res += str + (j == 0 ? "" : " ")
            }
            print("Case #\(i): " + res)
        }
    }
}
