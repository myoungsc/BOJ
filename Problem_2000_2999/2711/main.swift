//
//  main.swift
//  2711
//
//  Created by myoung on 11/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            var value = input.split{ $0 == " " }.map{ String($0) }
            var res = Array(value.removeLast())
            let _ = res.remove(at: (Int(value[0]) ?? 0)-1)
            print(res.map{ String($0) }.joined())
        }
    }
}
