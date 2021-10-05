//
//  main.swift
//  2167
//
//  Created by 명수창 on 2021/10/01.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
    var addArr: [[Int]] = []
    for _ in 0 ..< arr[0] {
        if let input2 = readLine() {
            let arrNumber = input2.split{ $0 == " " }.map{ Int(String($0))! }
            addArr.append(arrNumber)
        }
    }
    let num = Int(readLine()!)!
    for _ in 0 ..< num {
        if let inputAdd = readLine() {
            let addXY = inputAdd.split{ $0 == " " }.map{ Int(String($0))! - 1 }
            let startX = addXY[0], startY = addXY[1], endX = addXY[2], endY = addXY[3]
            var res = 0
            var x = startX, y = startY
            while true {
                res += addArr[x][y]
                if x == endX && y == endY { break }
                if y + 1 <= endY {
                    y += 1
                } else {
                    x += 1
                    y = startY
                }
            }
            print(res)
        }
    }
}
