//
//  main.swift
//  2161
//
//  Created by myoung on 20/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var array = Array(1 ... n)
    var res: [Int] = []
    while array.count > 0 {
        let first = array.removeFirst()
        if array.count > 1 {
            let second = array.removeFirst()
            array.append(second)
        }
        res.append(first)
    }
    print(res.map{ String($0) }.joined(separator: " "))
}

