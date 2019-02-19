//
//  main.swift
//  1427
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var array: [Int] = []
    for element in input {
        array.append(Int(String(element)) ?? 0)
    }
    let res = array.sorted { $0 > $1 }.compactMap{ String($0) }.joined()
    print(res)
}
