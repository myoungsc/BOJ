//
//  main.swift
//  2522
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for i in 0 ..< n*2-1 {
        var res = ""
        if i <= n-1 {
            for _ in 0 ..< n-i-1 { res.append(" ") }
            for _ in 0 ..< i+1 { res.append("*") }
            print(res)
        } else {
            for _ in 0 ..< i-n+1 { res.append(" ") }
            for _ in 0 ..< (n*2-1)-i { res.append("*") }
            print(res)
        }
    }
}
