//
//  main.swift
//  3273
//
//  Created by myoung on 2021/06/01.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let _ = readLine(),
   let input = readLine(),
   let input2 = readLine(),
   let value = Int(input2) {
    let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
    var sums: Set<Int> = []
    var res = 0
    for num in arr {
        if let _ = sums.remove(num) {
            res += 1
        } else {
            sums.insert(value-num)
        }
    }
    print(res)
}
