//
//  main.swift
//  9506
//
//  Created by myoung on 26/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine(), input != "-1" {
    let n = Int(input) ?? 0
    var res: [Int] = []
    for i in 1 ..< n-1 {
        if n % i == 0 { res.append(i) }
    }
    if n == res.reduce(0, +) {
        print("\(n) = " + res.map{ String($0) }.joined(separator: " + "))
    } else {
        print("\(n) is NOT perfect.")
    }
}

/* 수정전
while let input = readLine(), input != "-1" {
    
    let n = Int(input) ?? 0
    var res: [Int] = []
    var count = 1
    while count * 2 <= n {
        let temp: Double = Double(n) / Double(count)
        
        if temp / Double(Int(temp)) == 1.0 {
            let value = n % count
            if value != 1 { res.append(count) }
        }
        count += 1
    }
    if n == res.reduce(0, +) {
        print("\(n)" + res.map{ String($0) }.joined(separator: " + "))
        
    } else {
        print("\(n) is NOT perfect.")
    }
}
*/

