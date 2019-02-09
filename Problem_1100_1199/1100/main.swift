//
//  main.swift
//  1100
//
//  Created by myoung on 09/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var whiteAndblack = true
var horseCount = 0
for _ in 0 ..< 8 {
    if let input = readLine() {
        var index = whiteAndblack ? 0 : 1
        for _ in 0 ..< input.count/2 {
            let temp = input[input.index(input.startIndex, offsetBy: index)]
            if temp == "F" {
                horseCount += 1
            }
            index += 2
        }
        whiteAndblack = whiteAndblack ? false : true
    }
}
print(horseCount)
