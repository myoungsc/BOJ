//
//  main.swift
//  5426
//
//  Created by 명수창 on 29/11/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

//시간초과
if let input = readLine() {
    let num = Int(input) ?? 0
    for _ in 0 ..< num  {
        if let word = readLine() {
            let count = Int(sqrt(Double(word.count)))
            let arr = word.map{ String($0) }
            
            var initIndex = 1
            var index = count-1
            var res = ""
            
            for _ in 0 ..< arr.count {
                res += arr[index]
                index += count
                
                if index >= word.count {
                    initIndex += 1
                    index = count - initIndex
                }
            }
            print(res)
        }
    }
}
