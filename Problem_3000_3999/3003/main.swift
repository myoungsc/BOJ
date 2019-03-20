//
//  main.swift
//  3003
//
//  Created by myoung on 20/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let original = [1, 1, 2, 2, 2, 8]
    let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    
    var res: [Int] = []
    
    for (i, element) in values.enumerated() {
        res.append(original[i] - element)
    }
    print(res.map{ String($0) }.joined(separator: " "))
}

