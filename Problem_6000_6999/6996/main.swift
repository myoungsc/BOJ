//
//  main.swift
//  6996
//
//  Created by myoung on 24/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let values = input.split{ $0 == " " }.map{ String($0) }
            
            if values[0].count != values[1].count {
                print("\(values[0]) & \(values[1]) are NOT anagrams.")
            } else {
                let a = values[0].sorted{ $0 < $1 }.map{ String($0) }
                let b = values[1].sorted{ $0 < $1 }.map{ String($0) }
                if a.joined() == b.joined() {
                    print("\(values[0]) & \(values[1]) are anagrams.")
                } else {
                    print("\(values[0]) & \(values[1]) are NOT anagrams.")
                }
            }
        }
    }
}
