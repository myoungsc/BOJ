//
//  main.swift
//  1568
//
//  Created by myoung on 15/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var n = Int(input) ?? 0
    var res = 0, second = 1
    while n > 0 {
        res += 1
        if n - second < 0 { second = 1 }
        n -= second
        second += 1
    }
    print(res)
}
