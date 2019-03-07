//
//  main.swift
//  2684
//
//  Created by myoung on 05/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            var dic: [String: Int] = ["TTT": 0, "TTH": 0, "THT":0, "THH": 0, "HTT":0, "HTH":0, "HHT": 0, "HHH": 0 ]
            var arr = Array(input)
            for i in 0 ..< arr.count-2 {
                let temp = String(arr[i...i+2])
                if var count = dic[temp] {
                    count += 1
                    dic[temp] = count
                }
            }
            let res = "\((dic["TTT"] ?? 0)) \((dic["TTH"] ?? 0)) \((dic["THT"] ?? 0)) \((dic["THH"] ?? 0)) \((dic["HTT"] ?? 0)) \((dic["HTH"] ?? 0)) \((dic["HHT"] ?? 0)) \((dic["HHH"] ?? 0))"
            print(res)
        }
    }
}
