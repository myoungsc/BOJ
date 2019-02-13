//
//  main.swift
//  1357
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int(String($0.reversed())) ?? 0 }.reduce(0, +)
    print(Int(String(String(value).reversed())) ?? 0)
}
