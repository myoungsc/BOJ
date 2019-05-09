//
//  main.swift
//  5565
//
//  Created by myoung on 09/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var res = 0
for i in 0 ..< 10 {
    if let input = readLine() {
        let n = Int(input) ?? 0
        if i == 0 {
            res = n
        } else {
            res = res - n
        }
    }
}
print(res)
