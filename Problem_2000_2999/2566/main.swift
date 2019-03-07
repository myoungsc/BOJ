//
//  main.swift
//  2566
//
//  Created by myoung on 05/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var max = 0, row = 1, column = 1
for i in 1 ... 9 {
    if let input = readLine() {
        let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        for (j, value) in values.enumerated() {
            if max < value {
                max = value
                row = i
                column = j+1
            }
        }
    }
}
print(max)
print("\(row) \(column)")
