//
//  main.swift
//  1330
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    if value[0] > value[1] {
        print(">")
    } else if value[0] < value[1] {
        print("<")
    } else {
        print("==")
    }
}
