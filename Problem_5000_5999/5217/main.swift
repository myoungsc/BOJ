//
//  main.swift
//  5217
//
//  Created by myoung on 12/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            var res: [String] = []
            let temp = Int(input) ?? 0
            for i in 1 ..< temp {
                for j in i+1 ..< temp {
                    if i + j == temp {
                        res.append("\(i) \(j)")
                    }
                }
            }
            print("Pairs for \(temp): " + res.joined(separator: ", "))
        }
    }
}
