//
//  main.swift
//  2609
//
//  Created by myoung on 08/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let array = input.split { $0 == " " }.map{ Int($0) ?? 0 }
    var a = array.max() ?? 0, b = array.min() ?? 0
    while b > 0 {
        let temp = a
        a = b
        b = temp%b
    }
    print(a)
    print((array[0]*array[1])/a)
}
