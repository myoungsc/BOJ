//
//  main.swift
//  1284
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while true {
    if let input = readLine() {
        if input == "0" { break }
        var length = input.count + 1
        for char in input {
            switch char {
            case "0": length += 4
            case "1": length += 2
            default: length += 3
            }
        }
        print(length)
    }
}
