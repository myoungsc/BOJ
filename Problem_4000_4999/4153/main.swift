//
//  main.swift
//  4153
//
//  Created by myoung on 14/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine() {
    if input == "0 0 0 " { break }
    let value = input.split{ $0 == " " }.map{ (Int($0) ?? 0) * (Int($0) ?? 0) }
    let diagonal = value.max() ?? 0
    if diagonal == (value.filter{ $0 != diagonal }.reduce(0, +)) {
        print("right")
    } else {
        print("wrong")
    }
}
