//
//  main.swift
//  5524
//
//  Created by 명수창 on 06/12/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let word = readLine() {
            print(word.lowercased())
        }
    }
}
