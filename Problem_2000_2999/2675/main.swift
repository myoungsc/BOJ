//
//  main.swift
//  2675
//
//  Created by myoung on 08/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var n = 0
if let input = readLine() {
    n = Int(input) ?? 0
}

for _ in 0 ..< n {
    if let input = readLine() {
        let inputs = input.split { $0 == " " }
        let count = Int(inputs[0]) ?? 0
        var output = ""
        for char in inputs[1] {
            for _ in 0 ..< count {
                output += String(char)
            }
        }
        print(output)
    }
}
