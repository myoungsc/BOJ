//
//  main.swift
//  2747
//
//  Created by maccli1 on 13/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var fibonacii: [Int] = [0, 1]
if let input = readLine() {
    let n = Int(input) ?? 0
    if n > 1 {
        for i in 2 ..< n+1 {
            fibonacii.append(fibonacii[i-1] + fibonacii[i-2])
        }
    }
    print(fibonacii.last ?? 0)
}
