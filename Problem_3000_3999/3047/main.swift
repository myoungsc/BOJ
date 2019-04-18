//
//  main.swift
//  3047
//
//  Created by myoung on 18/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.sorted()
    if let input = readLine() {
        var array: [String] = []
        for char in input {
            if char == "A" {
                array.append(String(values[0]))
            } else if char == "B" {
                array.append(String(values[1]))
            } else {
                array.append(String(values[2]))
            }
        }
        print(array.joined(separator: " "))
    }
}
