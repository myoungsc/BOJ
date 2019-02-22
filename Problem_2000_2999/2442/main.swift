//
//  main.swift
//  2442
//
//  Created by myoung on 22/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    let count = 2*n-1
    var empty = count/2
    var starCount = count-(empty*2)
    
    for _ in 0 ..< n {
        var output = ""
        for j in 0 ..< count {
            if empty + starCount > j {
                if empty > j {
                    output += " "
                } else {
                    output += "*"
                }
            }
        }
        empty -= 1
        starCount = count-(empty*2)
        print(output)
    }
}
