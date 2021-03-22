//
//  main.swift
//  2798
//
//  Created by myoung on 2021/01/10.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let temp = readLine() {
    let arr = temp.split{ $0 == " " }.map{ String($0) }
    if let _ = Int(arr[0]), let m = Int(arr[1]) {
        var res = m, res1 = 0
        
        if let input = readLine() {
            let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
            
            for i in 0 ..< arr.count-2 {
                for j in i+1 ..< arr.count-1 {
                    for k in j+1 ..< arr.count {
                        let sum = arr[i] + arr[j] + arr[k]
                        if sum > m {
                            continue
                        }
                        let temp = m - sum
                        if res >= temp {
                            res = temp
                            res1 = sum
                        }
                    }
                }
            }
        }
        print(res1)
    }
}
