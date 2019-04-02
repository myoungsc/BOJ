//
//  main.swift
//  2884
//
//  Created by myoung on 02/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let temp = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var h = temp[0], m = temp[1] - 45
    if m < 0  {
        m = 60 + m
        if h - 1 < 0 {
            h = 24-1
        } else {
            h -= 1
        }
    }
    print("\(h) \(m)")
}
