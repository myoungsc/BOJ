//
//  main.swift
//  15969
//
//  Created by myoung on 13/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let _ = Int(input) ?? 0
    if let input = readLine() {
        let arr = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        print((arr.max() ?? 0) - (arr.min() ?? 0))
    }
}
