//
//  main.swift
//  5532
//
//  Created by myoung on 08/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var l = 0, a = 0, b = 0, c = 0, d = 0
if let input = readLine() { l = Int(input) ?? 0 }
if let input = readLine() { a = Int(input) ?? 0 }
if let input = readLine() { b = Int(input) ?? 0 }
if let input = readLine() { c = Int(input) ?? 0 }
if let input = readLine() { d = Int(input) ?? 0 }

let language = (a / c) + (a % c == 0 ? 0 : 1)
let math = (b / d) + (b % d == 0 ? 0 : 1)

print(l - max(language, math))
