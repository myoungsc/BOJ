//
//  main.swift
//  11179
//
//  Created by myoung on 12/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    let binary = String(n, radix: 2).reversed().map{ String($0) }.joined()
    print(Int(binary, radix: 2) ?? 0)
}
