//
//  main.swift
//  2355
//
//  Created by 명수창 on 2021/06/08.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
    let a = arr[0]
    let b = arr[1]
    if a <= b {
        print((b - a + 1) * (b + a) / 2)
    } else {
        print((a - b + 1) * (b + a) / 2)
    }
}
