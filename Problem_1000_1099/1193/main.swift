//
//  main.swift
//  1193
//
//  Created by myoung on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    var sum = 0
    var count = 0
    
    while true {
        count += 1
        sum += count
        if sum >= n { break }
    }
    
    var x = (count+1) % 2 == 0 ? count : 1
    var y = (count+1) % 2 == 0 ? 1 : count
    
    for _ in sum-count+1 ..< n {
        if (count+1)%2 == 0 {
            x -= 1
            y += 1
        } else {
            x += 1
            y -= 1
        }
    }
    print("\(x)/\(y)")
}
