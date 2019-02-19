//
//  main.swift
//  2010
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var sum = 1
    for _ in 0 ..< n {
        if let input = readLine() {
            let mutiTap = Int(input) ?? 0
            sum += mutiTap-1
        }
    }
    print(sum)
}
