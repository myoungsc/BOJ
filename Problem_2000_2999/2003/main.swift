//
//  main.swift
//  2003
//
//  Created by myoung on 2021/01/19.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let input2 = readLine() {
    let tempArr = input.split{ $0 == " " }.map{ Int(String($0))! }
    let sum = tempArr[1]
    let arr = input2.split{ $0 == " " }.map{ Int(String($0))! }
    
    var count = 0, index = 0
    while index < arr.count {
        var temp = 0
        for i in index ..< arr.count {
            temp += arr[i]
            if temp == sum {
                count += 1
                break
            }
            if temp > sum { break }
        }
        index += 1
    }
    print(count)
}
