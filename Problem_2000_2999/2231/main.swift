//
//  main.swift
//  2231
//
//  Created by myoung on 2021/01/11.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let n = Int(input) {
    var temp = n, arr: [Int] = []
    while true {
        var divi = temp
        var res = temp
        while true {
            res += divi % 10
            divi = divi / 10
            if divi == 0 { break }
        }
        if res == n { arr.append(temp) }
        temp -= 1
        if temp == 0{ break }
    }
    if arr.count == 0 {
        print(0)
    } else {
        print(arr[arr.count-1])
    }
}

