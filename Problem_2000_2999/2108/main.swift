//
//  main.swift
//  2108
//
//  Created by myoung on 2021/02/01.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []
var sum: Double = 0.0
var max = Int.min, min = Int.max, modeCount = 0

var dic: [Int: Int] = [:]

for _ in 0 ..< n {
    let value = Int(readLine()!)!
    arr.append(value)
    sum += Double(value)
    
    if value > max { max = value }
    if value < min { min = value }
    
    if var temp = dic[value] {
        temp += 1
        dic[value] = temp
        if modeCount < temp {
            modeCount = temp
        }
    } else {
        dic[value] = 1
        if modeCount < 1 {
            modeCount = 1
        }
    }
}
var temp = dic.filter{ $0.value == modeCount }.sorted { $0.key < $1.key }
var mode = 0

if temp.count < 2 {
    mode = temp[0].key
} else if temp[0].value == temp[1].value {
    mode = temp[1].key
} else {
    mode = temp[0].key
}

print(Int(round(sum/Double(n)))) //합
arr = arr.sorted()
print(arr[arr.count/2]) //중앙값
print(mode) //최빈값
print(max - min) //범위

