//
//  main.swift
//  10101
//
//  Created by myoung on 11/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input1 = readLine(), let input2 = readLine(), let input3 = readLine() {
    let i = Int(input1) ?? 0, j = Int(input2) ?? 0, k = Int(input3) ?? 0
    if i + j + k == 180 {
        if i == 60 && j == 60 && k == 60 {
            print("Equilateral")
        } else if i == j || i == k || j == k {
            print("Isosceles")
        } else {
            print("Scalene")
        }
    } else {
        print("Error")
    }
}
