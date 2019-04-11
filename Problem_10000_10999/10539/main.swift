//
//  main.swift
//  10539
//
//  Created by myoung on 11/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let input2 = readLine() {
    let n = Int(input) ?? 0
    let arr = input2.split{ $0 == " " }.map{ Int($0) ?? 0}
    
    var res: [String] = []
    var sum = 0
    
    for i in 0 ..< n {
        res.append(String(arr[i]*(i+1)-sum))
        sum += arr[i]*(i+1)-sum
    }
    print(res.joined(separator: " "))
}
