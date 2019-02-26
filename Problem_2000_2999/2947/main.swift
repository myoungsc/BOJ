//
//  main.swift
//  2947
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    while true {
        for i in 0 ..< values.count-1 {
            let before = values[i]
            let after = values[i+1]
            if before > after {
                values.swapAt(i, i+1)
                print(values.map{ String($0) }.joined(separator: " "))
            }
        }
        if values == [1, 2, 3, 4, 5] { break }
    }
}
