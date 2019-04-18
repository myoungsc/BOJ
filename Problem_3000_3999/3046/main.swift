//
//  main.swift
//  3046
//
//  Created by myoung on 18/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let sum = values[1] * 2
    print(sum-values[0])
}
