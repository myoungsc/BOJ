//
//  main.swift
//  2869
//
//  Created by myoung on 02/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let res = (arr[2]-arr[1]-1) / (arr[0]-arr[1]) + 1
    print(res)
}
