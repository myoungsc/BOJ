//
//  main.swift
//  2558
//
//  Created by myoung on 04/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var a: Int = 0, b: Int = 0
if let input = readLine() {
    a = Int(input) ?? 0
}
if let input = readLine() {
    b = Int(input) ?? 0
}
print(a+b)
