//
//  main.swift
//  4673
//
//  Created by myoung on 24/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func makeInitNumber(_ value: Int) -> Int {
    var result = value
    var temp = value
    
    while temp != 0 {
        result += temp%10
        temp = temp/10
    }
    return result
}

var array = [Int](repeating: 0, count: 10000)

for i in 1 ..< 10000 {
    var temp = i
    while true {
        temp = makeInitNumber(temp)
        if temp >= 10000 { break }
        array[temp] = array[temp] + 1
    }
}

for i in 1 ..< 10000 {
    if array[i] == 0 {
        print(i)
    }
}
