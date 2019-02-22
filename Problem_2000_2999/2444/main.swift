//
//  main.swift
//  2444
//
//  Created by myoung on 22/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    for i in 1 ... (2*n-1) {
        var temp = ""
        if i <= n {
            for _ in 0 ..< n-i {
                temp.append(" ")
            }
            for _ in 0 ..< i + (i-1) {
                temp.append("*")
            }
        } else {
            for _ in 1 ... i-n {
                temp.append(" ")
            }
            for _ in 0 ..< (2*n-1) - (2*(i-n)) {
                temp.append("*")
            }
        }
        print(temp)
    }
}
