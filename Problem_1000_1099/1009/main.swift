//
//  main.swift
//  1009
//
//  Created by myoung on 08/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            let a = values[0] % 10 == 0 ? 10 : values[0] % 10
            if a == 10 || a == 1 || a == 5 || a == 6 {
                print(a)
            } else if a == 4 || a == 9 {
                if values[1] % 2 == 0 {
                    print(a == 4 ? 6 : 1)
                } else {
                    print(a)
                }
            } else {
                let arr = [2: [2, 4, 8, 6], 3: [3, 9, 7, 1], 7: [7, 9, 3, 1], 8: [8, 4, 2, 6]]
                let temp = arr[a] ?? []
                let over = values[1] % 4
                if over == 0 {
                    print(temp[3])
                } else {
                    print(temp[over-1])
                }
            }
        }
    }
}
