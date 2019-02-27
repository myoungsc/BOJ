//
//  main.swift
//  2523
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for i in 1 ... 2*n-1 {
        var res = ""
        if i <= n {
            for _ in 0 ..< i {
                res.append("*")
            }
        } else {
            for _ in 0 ..< (2*n)-i {
                res.append("*")
            }
        }
        print(res)
    }
}
