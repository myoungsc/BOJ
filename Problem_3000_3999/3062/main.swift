//
//  main.swift
//  3062
//
//  Created by myoung on 07/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            var res = String((Int(input) ?? 0) + (Int(String(input.reversed())) ?? 0))
            var flag = true
            for _ in 0 ..< res.count/2 {
                let start = res.removeFirst()
                let end = res.removeLast()
                if start != end {
                    flag = false
                    break
                }
            }
            print(flag ? "YES" : "NO")
        }
    }
}
