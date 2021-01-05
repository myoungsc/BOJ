//
//  main.swift
//  1011
//
//  Created by myoung on 2021/01/06.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let n = Int(input) {
    for _ in 0 ..< n {
        if let input = readLine() {
            let arr = input.split{ $0 == " " }.map{ String($0) }
            if let start = Int(arr[0]), let end = Int(arr[1]) {
                let distance = end-start
                                
                var move = 1, temp = 0, count = 1
                while true {
                    temp += 1
    
                    count += 1
                    move += temp
                    if move >= distance { break }
                    
                    count += 1
                    move += temp
                    if move >= distance { break }
                }
                if move > distance { count -= 1 }
                print(count)
            }
        }
    }
}

