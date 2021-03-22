//
//  main.swift
//  1373
//
//  Created by myoung on 2021/02/22.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if var str = readLine() {
    let divi = str.count % 3
    if divi == 1 {
        str = "00" + str
    } else if divi == 2 {
        str = "0" + str
    }
 
    let arr = str.map{ String($0) }
    var res: [String] = []
    
    for i in stride(from: 0, to: str.count, by: 3) {
        let first = arr[i ..< i+3].joined()
        if let temp = Int(first, radix: 2) {
            res.append(String(temp))
        }
    }
    print(res.joined())
}
