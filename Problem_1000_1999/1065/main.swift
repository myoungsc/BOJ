//
//  main.swift
//  1065
//
//  Created by maccli1 on 08/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    
    let n = Int(input) ?? 0
    
    var count = 0
    for i in 1 ... n {
        if String(i).count == 1 {
            count += 1
        } else if String(i).count == 2 {
            count += 1
        } else if String(i).count >= 3 {
            var arr: [Int] = []
            for char in String(i) {
                arr.append(Int(String(char)) ?? 0)
            }
            let subtration = arr[0] - arr[1]
            var isHansu = true
            for j in 1 ..< arr.count-1 {
                if subtration != arr[j] - arr[j+1] {
                    isHansu = false
                    break
                }
            }
            if isHansu { count += 1 }
        }
    }
    print(count)
}
