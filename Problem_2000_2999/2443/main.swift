//
//  main.swift
//  2443
//
//  Created by myoung on 22/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for i in 0 ..< n {
        var temp = ""
        for _ in 0 ..< i {
            temp.append(" ")
        }
        for _ in 0 ..< ((2*n)-1)-(i*2) {
            temp.append("*")
        }
        print(temp)
    }
}
