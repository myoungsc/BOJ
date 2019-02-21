//
//  main.swift
//  2439
//
//  Created by myoung on 21/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var parameter = 0
if let input = readLine() {
    parameter = Int(input) ?? 0
}

for i in 1 ... parameter {
    var star = ""
    for j in (1 ... parameter).reversed() {
        if i - j >= 0 {
            star.append("*")
        } else {
            star.append(" ")
        }
    }
    print(star)
}
