//
//  main.swift
//  3460
//
//  Created by myoung on 23/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            var location: [Int] = []
            var divi = Int(input) ?? 0, count = 0
            while divi > 0 {
                if divi % 2 == 1 {
                    location.append(count)
                }
                divi = divi/2
                count += 1
            }
            print(location.map{String($0)}.joined(separator: " "))
        }
    }
}
