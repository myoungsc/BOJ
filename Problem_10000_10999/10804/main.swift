//
//  main.swift
//  10804
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var res = Array(1...20).map{ String($0) }
for _ in 0 ..< 10 {
    if let input = readLine() {
        let values = input.split{ $0 == " " }.map{ (Int($0) ?? 0) - 1 }
        let distance = values.reduce(0, { $1-$0 })
        
        if distance != 0 {
            if distance == 1 {
                res.swapAt(values[0], values[1])
                continue
            }
            
            var indexFirst = values[0], indexLast = values[1]
            for _ in 0 ..< (distance/2) + 1 {
                res.swapAt(indexFirst, indexLast)
                indexFirst += 1
                indexLast -= 1
            }
        }
    }
}
print(res.joined(separator: " "))
