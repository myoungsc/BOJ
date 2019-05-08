//
//  main.swift
//  2745
//
//  Created by myoung on 08/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let values = input.split{ $0 == " " }.map{ String($0) }
    if let n = Int(values[0], radix: Int(values[1]) ?? 0) {
        print(n)
    }
}
