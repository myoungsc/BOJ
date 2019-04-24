//
//  main.swift
//  5086
//
//  Created by myoung on 24/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine() {
    if input == "0 0" { break }
    let nm = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    if nm[1] % nm[0] == 0 {
        print("factor")
    } else if nm[0] % nm[1] == 0 {
        print("multiple")
    } else {
        print("neither")
    }
}
