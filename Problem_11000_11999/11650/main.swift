//
//  main.swift
//  11650
//
//  Created by myoung on 2021/01/14.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let n = Int(input) {
    var arr: [(x: Int, y: Int)] = []
    for _ in 0 ..< n {
        if let input2 = readLine() {
            let value = input2.split(separator: " ").map{ Int(String($0))! }
            arr.append((value[0], value[1]))
        }
    }
    let res: [(x: Int, y: Int)] = arr.sorted{ $0.x == $1.x ? $0.y < $1.y : $0.x < $1.x }
    for item in res {
        print("\(item.x) \(item.y)")
    }
}
