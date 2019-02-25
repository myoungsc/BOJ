//
//  main.swift
//  2985
//
//  Created by maccli1 on 25/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }    
    if value[1] + value[2] == value[0] {
        print("\(value[0])=\(value[1])+\(value[2])")
    } else if value[1] - value[2] == value[0] {
        print("\(value[0])=\(value[1])-\(value[2])")
    } else if value[1] * value[2] == value[0] {
        print("\(value[0])=\(value[1])*\(value[2])")
    } else if value[1] / value[2] == value[0] {
        print("\(value[0])=\(value[1])/\(value[2])")
    } else if value[0] + value[1] == value[2] {
        print("\(value[0])+\(value[1])=\(value[2])")
    } else if value[0] - value[1] == value[2] {
        print("\(value[0])-\(value[1])=\(value[2])")
    } else if value[0] * value[1] == value[2] {
        print("\(value[0])*\(value[1])=\(value[2])")
    } else {
        print("\(value[0])/\(value[1])=\(value[2])")
    }
}

