//
//  main.swift
//  11966
//
//  Created by 명수창 on 06/12/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var n = Int(input) ?? 0
    
    if n == 1 || n == 2 || n == 3 {
        print(n == 3 ? 0 : 1)
    } else {
        var temp = 0
        while n > 1 {
            n = n/2
            if n % 2 != 0 {
                temp += 1
            }
        }
        print(temp == 1 ? 1 : 0)
    }
}
