//
//  main.swift
//  2475
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let array = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var sum = 0
    for element in array {
        sum += element * element
    }
    print(sum%10)
}
