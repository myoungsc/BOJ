//
//  main.swift
//  1145
//
//  Created by 명수창 on 2021/09/16.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int($0)! }
    if var max = arr.min() {
        var res = 0
        while true {
            let counts = arr.filter{ max % $0 == 0 }
            if counts.count >= 3 {
                res = max
                break
            } else {
                max += 1
            }
        }
        print(res)
    }
}
