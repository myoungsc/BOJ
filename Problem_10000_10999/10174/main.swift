//
//  main.swift
//  10174
//
//  Created by myoung on 2020/06/03.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for _ in 0 ..< Int(input)! {
        if let word = readLine() {
            let low = word.lowercased()
            let revers = low.reversed().map{ String($0) }.joined()
            if (revers == low) {
                print("Yes")
            } else {
                print("No")
            }
        }
    }
}
