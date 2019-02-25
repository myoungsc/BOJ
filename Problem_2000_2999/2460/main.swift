//
//  main.swift
//  2460
//
//  Created by myoung on 25/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var maxPeople = 0, sum = 0
while let input = readLine(strippingNewline: true) {
    let temp = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    sum += -temp[0] + temp[1]
    maxPeople = max(maxPeople, sum)
}
print(maxPeople)
