//
//  main.swift
//  14656
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var count = 0
    if let input = readLine() {
        let array = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        for i in 0 ..< n {
            if i+1 != array[i] { count += 1 }
        }
    }
    print(count)
}
