//
//  main.swift
//  1259
//
//  Created by 명수창 on 2021/09/30.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

while true {
    if let input = readLine() {
        if input == "0" { break }
        let arr = input.map{ String($0) }
        var res: Bool = true
        for i in 0 ..< arr.count/2 {
            if arr[i] != arr[arr.count-i-1] {
                res = false
                break
            }
        }
        print(res ? "yes" : "no")
    }
}
