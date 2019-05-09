//
//  main.swift
//  10419
//
//  Created by myoung on 09/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let time = Int(input) ?? 0
            var late = 0
            while late + (late * late) <= time {
                late += 1
                if late + (late * late) > time {
                    late -= 1
                    break
                }
            }
            print(late)
        }
    }
}
