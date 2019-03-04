//
//  main.swift
//  2774
//
//  Created by myoung on 04/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for _ in 0 ..< (Int(input) ?? 0) {
        var res = Set<Character>()
        if let input = readLine() {
            for element in input {
                res.insert(element)
            }
        }
        print(res.count)
    }
}

