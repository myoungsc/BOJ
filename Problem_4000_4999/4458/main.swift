//
//  main.swift
//  4458
//
//  Created by myoung on 23/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            var array = input.map{ String($0) }
            array[0] = array[0].uppercased()
            print(array.joined())
        }
    }
}
