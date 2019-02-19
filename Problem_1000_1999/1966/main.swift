//
//  main.swift
//  1966
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        var order = 0
        var res = 1
        
        if let input = readLine() {
            let temp = input.split{ $0 == " " }
            order = Int(temp[1]) ?? 0
        }
        
        if let input = readLine() {
            var printQueue = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            if printQueue.count == 1 {
                print(1)
            } else {
                var location = order
                var max = printQueue.max() ?? 0
                while true {
                    let first = printQueue.removeFirst()
                    if first < max {
                        printQueue.append(first)
                        if location == 0 {
                            location = printQueue.count-1
                        } else {
                            location -= 1
                        }
                    } else if first == max {
                        if location == 0 {
                            print(res)
                            break
                        } else {
                            location -= 1
                            res += 1
                            max = printQueue.max() ?? 0
                        }
                    }
                }
            }
        }
    }
}
