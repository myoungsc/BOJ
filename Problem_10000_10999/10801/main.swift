//
//  main.swift
//  10801
//
//  Created by myoung on 20/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let input2 = readLine() {
    
    let aArr = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let bArr = input2.split{ $0 == " " }.map{ Int($0) ?? 0 }
    
    var res = [0, 0]
    for i in 0 ..< aArr.count {
        if aArr[i] > bArr[i] {
            res[0] += 1
        } else if bArr[i] > aArr[i] {
            res[1] += 1
        }
    }
    print( res[0] == res[1] ? "D" : res[0] > res[1] ? "A" : "B")
}
