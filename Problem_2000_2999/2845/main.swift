//
//  main.swift
//  2845
//
//  Created by myoung on 22/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let realCount = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.reduce(1, *)
    if let input = readLine() {
        let newCount = input.split { $0 == " " }.map{ String((Int($0) ?? 0) - realCount) }.joined(separator: " ")
        print(newCount)
    }
}
