//
//  main.swift
//  2748
//
//  Created by maccli1 on 13/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var fibo: [Int] = [0, 1]
if let input = readLine() {
    let n = Int(input) ?? 0
    if n > 1 {
        for i in 2 ... n {
            fibo.append(fibo[i-1] + fibo[i-2])
        }
    }
    print(fibo[n])
}
