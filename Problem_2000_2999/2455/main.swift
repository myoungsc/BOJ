//
//  main.swift
//  2455
//
//  Created by myoung on 25/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var inTrain: [Int] = Array(repeating: 0, count: 4)
for i in 0 ..< 4 {
    if let input = readLine() {
        let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        if i == 0 {
            inTrain[i] = values[1]
            continue
        }
        inTrain[i] = inTrain[i-1]-values[0]+values[1]
    }
}
print(inTrain.max() ?? 0)
