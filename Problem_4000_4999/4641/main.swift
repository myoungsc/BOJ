//
//  main.swift
//  4641
//
//  Created by 명수창 on 09/01/2020.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

while(true) {
    if let input = readLine() {
        if input == "-1" { break }
        let arr = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        var count = 0
        for element in arr {
            let double = element * 2
            if double != 0 && arr.contains(double) {
                count += 1
            }
        }
        print(count)
    }
}

