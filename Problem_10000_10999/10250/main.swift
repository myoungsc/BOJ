//
//  main.swift
//  10250
//
//  Created by myoung on 2020/06/04.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

for _ in 0 ..< Int(readLine()!)! {
    if let input = readLine() {
        let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
        var floor = arr[2] % arr[0]
        var w = arr[2] / arr[0] + 1
        if floor == 0 {
            floor = arr[0]
            w -= 1
        }
        print(floor * 100 + w)
    }
}
