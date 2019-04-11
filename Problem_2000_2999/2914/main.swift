//
//  main.swift
//  2914
//
//  Created by myoung on 11/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    print((value[0] * (value[1]-1)) + 1)
}
