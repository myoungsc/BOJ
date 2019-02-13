//
//  main.swift
//  11557
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let s = Int(input) ?? 0
            var maxDrink = 0, schoolName = ""
            for _ in 0 ..< s {
                if let input = readLine() {
                    let values = input.split{ $0 == " " }
                    if maxDrink < Int(String(values[1])) ?? 0 {
                        maxDrink = Int(String(values[1])) ?? 0
                        schoolName = String(values[0])
                    }
                }
            }
            print(schoolName)
        }
    }
}
