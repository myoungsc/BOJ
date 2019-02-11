//
//  main.swift
//  8741
//
//  Created by myoung on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var res = ""
    for _ in 0 ..< n {
        res.append("1")
    }
    for _ in 0 ..< n-1 {
        res.append("0")
    }
    print(res)
}
