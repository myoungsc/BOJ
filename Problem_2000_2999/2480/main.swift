//
//  main.swift
//  2480
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let score = Array(Set(arr))
    var res = 0
    if score.count == 1 {
        res = 10000 + arr[0] * 1000
    } else if score.count == 2 {
        let temp = arr.filter{ $0 == score[0] }.count
        res = 1000 + (temp == 2 ? score[0] : score[1]) * 100
    } else {
        res = 100 * (arr.max() ?? 0)
    }
    print(res)
}
