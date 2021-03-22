//
//  main.swift
//  15813
//
//  Created by myoung on 2020/06/03.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

if let _ = readLine(), let name = readLine() {
    var res = 0
    for alpha in name {
        if let ascii = alpha.asciiValue {
            res += Int(ascii)-64
        }
    }
    print(res)
}
