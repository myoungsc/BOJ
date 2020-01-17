//
//  main.swift
//  1158
//
//  Created by 명수창 on 17/01/2020.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let nk = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var arr = Array(1...nk[0])
    var index = nk[1]
    var result = ""
    while arr.count != 0 {
        if index > arr.count {
            index = index - arr.count
            continue
        }
        let temp = arr.remove(at: index-1)
        result += String(temp) + (arr.count != 0 ? ", " : "")
      
        index += nk[1] - 1
    }
    print("<" + result + ">")
}


