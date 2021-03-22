//
//  main.swift
//  14681
//
//  Created by myoung on 2020/05/26.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let inputY = readLine() {
    if let x = Int(inputX), let y = Int(inputY) {
        if x > 0 && y > 0 {
            print(1)
        } else if x < 0 && y > 0 {
            print(2)
        } else if x < 0 && y < 0 {
            print(3)
        } else {
            print(4)
        }
    }
}
