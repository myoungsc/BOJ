//
//  main.swift
//  1712
//
//  Created by myoung on 2020/05/27.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0)! }
    if (value[2]-value[1]) <= 0 {
        print(-1)
    } else {
        let makeCount = value[0] / (value[2] - value[1]) + 1
        print(makeCount)
    }
}
