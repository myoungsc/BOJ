//
//  main.swift
//  2588
//
//  Created by myoung on 07/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var tempA = 0, tempB = 0
if let input = readLine() { tempA = Int(input) ?? 0 }
if let input = readLine() { tempB = Int(input) ?? 0 }

var position = 100, sum = 0
var digits: [Int] = []
while position > 0 {
    let value = tempB / position
    tempB = tempB % position
    digits.append(tempA*value)
    position = position/10
}

position = 1
for element in digits.reversed() {
    print(element)
    sum += element * position
    position = position * 10
}
print(sum)
