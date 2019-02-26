//
//  main.swift
//  2490
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.reduce(0, +)
    switch value {
    case 0: print("D")
    case 1: print("C")
    case 2: print("B")
    case 3: print("A")
    default: print("E")
    }
}
