//
//  main.swift
//  2941
//
//  Created by myoung on 11/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var changes = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
if let input = readLine() {
    
    var arr = Array(input.map{ String($0) })
    let count = arr.count
    var n = 0
    for i in 0 ... count-2 {
        if arr[i] + arr[i+1] == "dz" {
            if i != count-2 {
                if arr[i+2] == "=" {
                    n += 1
                }
            }
        } else if changes.contains(arr[i] + arr[i+1]) {
            n += 1
        }
    }
    print(count-n)
}
