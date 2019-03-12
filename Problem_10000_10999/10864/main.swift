//
//  main.swift
//  10864
//
//  Created by myoung on 12/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var res = Array(repeating: 0, count: value[0])
    
    for _ in 0 ..< value[1] {
        if let input = readLine() {
            let friend = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            res[friend[0]-1] += 1
            res[friend[1]-1] += 1
        }
    }
    for element in res {
        print(element)
    }
}
