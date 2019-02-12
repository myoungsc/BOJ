//
//  main.swift
//  10811
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var arr = Array(1 ... value[0])
    
    for _ in 0 ..< value[1] {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            let temp = Array(arr[value[0]-1 ... value[1]-1])
            
            var count = (value.max() ?? 0) - (value.min() ?? 0)
            var upCount = (value.min() ?? 0) - 1
            
            for _ in (value[0] ... value[1]).reversed() {
                arr[upCount] = temp[count]
                count -= 1
                upCount += 1
            }
        }
    }
    print(arr.map{ String($0) }.joined(separator: " "))
}
