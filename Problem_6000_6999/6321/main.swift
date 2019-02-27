//
//  main.swift
//  6321
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for i in 1 ... (Int(input) ?? 0) {
        var res: [String] = []
        if let input = readLine() {
            for char in input {
                if var ascii = char.unicodeScalars.first?.value {
                    if ascii == 90 {
                        ascii = 65
                    } else {
                        ascii += 1
                    }
                    res.append(String(UnicodeScalar(ascii)!))
                }
            }
        }
        print("String #\(i)")
        print("\(res.joined())\n")
    }
}
