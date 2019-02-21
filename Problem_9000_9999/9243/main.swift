//
//  main.swift
//  9243
//
//  Created by myoung on 21/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = (Int(input) ?? 0) % 2
    if let input = readLine(), let input2 = readLine() {
        if n == 0 {
            print(input == input2 ? "Deletion succeeded" : "Deletion failed")
        } else {
            var res = ""
            for element in input {
                res.append(element == "1" ? "0" : "1")
            }
            print(res == input2 ? "Deletion succeeded" : "Deletion failed")
        }
    }
}
