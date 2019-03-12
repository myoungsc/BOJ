//
//  main.swift
//  2739
//
//  Created by myoung on 12/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var parameter = 0
if let input = readLine() {
    parameter = Int(input) ?? 0
}

for i in 1 ... 9 {
    print("\(parameter) * \(i) = \(parameter*i)")
}
