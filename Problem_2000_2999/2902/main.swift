//
//  main.swift
//  2902
//
//  Created by myoung on 02/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var res: [String] = []
    for element in input {
        let ascii = element.unicodeScalars.first?.value ?? 0
        if ascii >= 65 && ascii <= 90 {
            res.append(String(UnicodeScalar(ascii)!))
        }
    }
    print(res.joined())
}
