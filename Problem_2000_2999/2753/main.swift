//
//  main.swift
//  2753
//
//  Created by myoung on 20/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    if n % 4 == 0 {
        print(n % 100 == 0 && n % 400 != 0 ? 0 : 1)
    } else {
        print(0)
    }
}
