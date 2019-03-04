//
//  main.swift
//  2998
//
//  Created by myoung on 04/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var value = input
    if value.count % 3 != 0 {
        value = (value.count % 3 != 1 ? "0" : "00") + value
    }
    var res = ""
    var array = Array(value)
    for i in 0 ..< value.count / 3 {
        let temp = array[i*3...(i*3)+2].map{ String($0) }.joined()
        let binary = Int(temp, radix: 2) ?? 0
        res += String(binary, radix: 8)
    }
    print(res)
}
