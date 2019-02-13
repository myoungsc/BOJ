//
//  main.swift
//  11816
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    if input.hasPrefix("0x") {
        let res = input.dropFirst(2)
        print(Int(res, radix: 16) ?? 0)
    } else if input.hasPrefix("0") {
        let res = input.dropFirst(1)
        print(Int(res, radix: 8) ?? 0)
    } else {
        print(input)
    }
}
