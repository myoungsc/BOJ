//
//  main.swift
//  4592
//
//  Created by myoung on 23/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine() {
    let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    if values[0] == 0 { break }
    var res: [Int] = []
    for i in 1 ..< values.count {
        if res.count == 0 || res[res.count-1] != values[i] {
            res.append(values[i])
        }
    }
    print(res.map{ String($0) }.joined(separator: " ") + " $")
}
