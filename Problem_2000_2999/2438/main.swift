//
//  main.swift
//  2438
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
    for _ in 0 ..< i {
        star.append("*")
    }
    print(star)
}
