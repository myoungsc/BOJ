//
//  main.swift
//  4880
//
//  Created by myoung on 25/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine() {
    if input == "0 0 0" { break }
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    if value[2] - value[1] == value[1] - value[0] {
        let sub = value[1] - value[0]
        print("AP \(value[2] + sub)")
    } else {
        let divi = value[1] / value[0]
        print("GP \(value[2] * divi)")
    }
}
