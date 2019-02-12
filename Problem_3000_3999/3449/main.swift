//
//  main.swift
//  3449
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine(), let input2 = readLine() {
            var res = 0
            let tempA = input.map{ String($0) }
            let tempB = input2.map{ String($0) }
            for i in 0 ..< tempA.count {
                if tempA[i] != tempB[i] { res += 1 }
            }
            print("Hamming distance is \(res).")
        }
    }
}
