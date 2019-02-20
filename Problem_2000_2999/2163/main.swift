//
//  main.swift
//  2163
//
//  Created by myoung on 20/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let nm = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.reduce(1){ ($0 * $1) }-1
    print(nm)
}

/* 수정 전
if let input = readLine() {
    let nm = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let max1 = max(nm[0], nm[1])
    let min1 = min(nm[0], nm[1])
    let res = (min1-1) + ((max1-1)*min1)
    print(res)
}
*/
