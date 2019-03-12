//
//  main.swift
//  2738
//
//  Created by myoung on 12/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var arr1: [[Int]] = [], arr2: [[Int]] = []

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    
    for i in 0 ..< 2 {
        for _ in 0 ..< value[0] {
            if let input = readLine() {
                if i == 0 {
                    arr1.append(input.split{ $0 == " " }.map{ Int($0) ?? 0 })
                } else {
                    arr2.append(input.split{ $0 == " " }.map{ Int($0) ?? 0 })
                }
            }
        }
    }
    
    for i in 0 ..< value[0] {
        var temp: [Int] = []
        for j in 0 ..< value[1] {
            temp.append(arr1[i][j] + arr2[i][j])
        }
        print(temp.map{ String($0) }.joined(separator: " "))
    }
}
