//
//  main.swift
//  5052
//
//  Created by myoung on 2021/03/16.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let n = Int(readLine()!) {
    for _ in 0 ..< n {
        if let n2 = Int(readLine()!) {
            var nums: [String] = []
            for _ in 0 ..< n2 {
                if let num = readLine() {
                    nums.append(num)
                }
            }
            
            nums.sort()
            
            var res: Bool = true
            for i in 0 ..< nums.count-1 {
                let current = nums[i]
                let next = nums[i+1]
                
                if current.count < next.count {
                    if next.hasPrefix(current) {
                        res = false
                        break
                    }
                }
            }
            print(res ? "YES" : "NO")
        }
    }
}

