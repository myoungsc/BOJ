//
//  main.swift
//  2501
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let inputs = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let n = inputs[0], k = inputs[1]
    var array: [Int] = []
    for i in 1 ... n {
        if n % i == 0 {
            array.append(i)
        }
    }
    array.count < k ? print(0) : print(array[k-1])
}
