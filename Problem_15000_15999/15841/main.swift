//
//  main.swift
//  15841
//
//  Created by myoung on 02/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let input2 = readLine() {
    var arr = input.map{ String($0) }
    let n = Int(input2) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let range = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            arr.swapAt(range[0], range[1])
        }
    }
    print(arr.joined())
}
