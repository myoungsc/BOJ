//
//  main.swift
//  1225
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let values = input.split{ $0 == " " }.map{ String($0) }
    var first = 0, second = 0
    for element in values[0] {
        first += Int(String(element)) ?? 0
    }
    for element in values[1] {
        second += Int(String(element)) ?? 0
    }
    print(first * second)
}
