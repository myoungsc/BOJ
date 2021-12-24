//
//  main.swift
//  17203
//
//  Created by 명수창 on 2021/11/11.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let inputArr = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let arr = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }

for _ in 0 ..< inputArr[1] {
    let rangeArr = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    var sum = 0
    for i in rangeArr[0] ..< rangeArr[1] {
        let temp = arr[i]-arr[i-1]
        sum += abs(temp)
    }
    print(sum)
}
