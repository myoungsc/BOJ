//
//  main.swift
//  2744
//
//  Created by myoung on 13/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var res = ""
    for char in input {
        if let ascii = char.unicodeScalars.first?.value {
            if ascii > UInt32(64) && ascii < UInt32(91) {
                res.append(Character(UnicodeScalar(ascii + 32)!))
            } else {
                res.append(Character(UnicodeScalar(ascii - 32)!))
            }
        }
    }
    print(res)
}
