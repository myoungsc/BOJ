//
//  main.swift
//  2775
//
//  Created by myoung on 2021/01/05.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let n = Int(input) {
    for _ in 0 ..< n {
        var layer: Int = 0, ho: Int = 0
        if let input = readLine(), let temp = Int(input) { layer = temp }
        if let input = readLine(), let temp = Int(input) { ho = temp }
                
        if ho == 1 {
            print(1)
            continue
        }
        var arr : [[Int]] = [Array(1...14)]
        for i in 1 ... layer {
            var temp: [Int] = []
            for j in 1 ... ho {
                let downArr = arr[i-1]
                if j == 1 {
                    temp.append(1)
                } else {
                    temp.append(downArr[j-1]+temp[j-2])
                }
            }
            arr.append(temp)
        }
        print(arr[layer][ho-1])
    }
}
