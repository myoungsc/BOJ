//
//  main.swift
//  5218
//
//  Created by myoung on 20/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ String($0) }
            let case1 = Array(value[0]), case2 = Array(value[1])
            var res: [UInt32] = []
            for i in 0 ..< case1.count {
                let case1Ascii = (case1[i].unicodeScalars.first?.value ?? 0) - 64
                let case2Ascii = (case2[i].unicodeScalars.first?.value ?? 0) - 64
                res.append(case1Ascii <= case2Ascii ? case2Ascii-case1Ascii : (case2Ascii+26)-case1Ascii)
            }
            print("Distances: \(res.map{ String($0) }.joined(separator: " "))")
        }
    }
}
