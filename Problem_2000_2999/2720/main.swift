//
//  main.swift
//  2720
//
//  Created by myoung on 11/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let i = Int(input) ?? 0
    for _ in 0 ..< i {
        if let input = readLine() {
            var n = Int(input) ?? 0
            var index = 0
            var array: [Int] = [0, 0, 0, 0], value: [Int] = [25, 10, 5, 1]
            while n > 0 {
                array[index] = n / value[index]
                n = n % value[index]
                index += 1
            }
            print(array.map{ String($0) }.joined(separator: " "))
        }
    }
}
