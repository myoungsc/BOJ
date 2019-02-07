//
//  main.swift
//  1008
//
//  Created by myoung on 07/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let inputs = input.split { $0 == " " }
    let a = Double(inputs[0]) ?? 0
    let b = Double(inputs[1]) ?? 0
    print(a/b)
}
