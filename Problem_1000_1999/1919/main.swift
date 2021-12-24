//
//  main.swift
//  1919
//
//  Created by 명수창 on 2021/12/24.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

var arrA = readLine()!.map{ String($0) }
var arrB = readLine()!.map{ String($0) }

var res: Int = 0
for a in arrA {
    if arrB.contains(a) {
        if let index = arrB.firstIndex(of: a) {
            arrB.remove(at: index)
        }
    } else {
        res += 1
    }
}
print(res+arrB.count)
