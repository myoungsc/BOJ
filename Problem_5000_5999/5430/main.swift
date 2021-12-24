//
//  main.swift
//  5430
//
//  Created by 명수창 on 2021/11/11.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

for _ in 0 ..< Int(readLine()!)! {
    var isDirect = true
    let commendArr = Array(readLine()!)
    let a = readLine()!
    var arr = readLine()!.split{ $0 == "," }.map{ String($0.filter{ $0 != "]" && $0 != "[" }) }
    var startRange = 0, endRange = 0
    
    if a == "0" { arr = [] }
    var res = ""
    for commend in commendArr {
        if commend == "R" {
            isDirect = !isDirect
        } else if commend == "D" {
            if isDirect {
                startRange += 1
            } else {
                endRange += 1
            }
            if arr.count < startRange+endRange {
                res = "error"
                break
            }
        }
    }
        
    if res != "error" {
        var temp: [String] = []
        for i in startRange ..< arr.count-endRange {
            temp.append(arr[i])
        }
        
        if !isDirect { temp = temp.reversed() }
        res = "[\(temp.joined(separator: ","))]"
    }
    print(res)
}
