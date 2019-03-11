//
//  main.swift
//  10825
//
//  Created by maccli1 on 11/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var value: [[String]] = []
    
    for _ in 0 ..< n {
        if let input = readLine() {
            value.append(input.split{ $0 == " " }.map{ String($0) })
        }
    }
    
    value = value.sorted {
        if Int($0[1]) ?? 0 == Int($1[1]) ?? 0 {
            if Int($0[2]) ?? 0 == Int($1[2]) ?? 0 {
                if Int($0[3]) ?? 0 == Int($1[3]) ?? 0 {
                    return $0[0] < $1[0]
                } else {
                    return Int($0[3]) ?? 0 > Int($1[3]) ?? 0
                }
            } else {
                return Int($0[2]) ?? 0 < Int($1[2]) ?? 0
            }
        } else {
            return Int($0[1]) ?? 0 > Int($1[1]) ?? 0
        }
    }
    
    for element in value {
        print(element[0])
    }
}
