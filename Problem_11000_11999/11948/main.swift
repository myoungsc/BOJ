//
//  main.swift
//  11948
//
//  Created by maccli1 on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

//수정 후
var values: [Int] = []
for _ in 0 ..< 6 {
    if let input = readLine() {
        values.append(Int(input) ?? 0)
    }
}
let sum = values.reduce(0, +) - (values[0...3].min() ?? 0) - (values[4...5].min() ?? 0)
print(sum)

/* 수정 전
var sum = 0
var sciences: [Int] = [], historys: [Int] = []

for i in 0 ..< 6 {
    if let input = readLine() {
        if i < 4 {
            sciences.append(Int(input) ?? 0)
        } else {
            historys.append(Int(input) ?? 0)
        }
    }
}

sciences = sciences.sorted{ $0 > $1 }
for i in 0 ..< 3 {
    sum += sciences[i]
}
sum += historys.max() ?? 0
print(sum)
*/
