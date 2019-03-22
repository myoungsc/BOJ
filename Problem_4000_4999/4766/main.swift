//
//  main.swift
//  4766
//
//  Created by myoung on 22/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var before = 0.0, after = 0.0

if let input = readLine() {
    before = Double(input) ?? 0
}

while let input = readLine(), input != "999" {
    after = Double(input) ?? 0
    print(String(format: "%.2f", after-before))
    before = after
}
