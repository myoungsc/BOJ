//
//  main.swift
//  1085
//
//  Created by myoung on 2021/01/10.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
    let x = arr[0], y = arr[1], w = arr[2], h = arr[3]
    let res = [w-x, x-0, h-y, y-0]
    print(res.min()!)
}
