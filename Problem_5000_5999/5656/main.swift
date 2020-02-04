//
//  main.swift
//  5656
//
//  Created by 명수창 on 30/01/2020.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

/**
 >    크다
 >=    크거나 같다
 <    작다
 <=    작거나 같다
 ==    같다
 !=    같지 않다
 E     끝
 */

/*
 Case 1: false
 Case 2: false
 Case 3: true
 */

var i = 1
while true {
    if let input = readLine() {
        let arr = input.split{ $0 == " " }.map{ String($0) }
        if arr[1] == "E" { break }
       
        var res = false
        switch arr[1] {
        case ">": res = Int(arr[0]) ?? 0 > Int(arr[2]) ?? 0
        case ">=": res = Int(arr[0]) ?? 0 >= Int(arr[2]) ?? 0
        case "<": res = Int(arr[0]) ?? 0 < Int(arr[2]) ?? 0
        case "<=": res = Int(arr[0]) ?? 0 <= Int(arr[2]) ?? 0
        case "==": res = Int(arr[0]) ?? 0 == Int(arr[2]) ?? 0
        case "!=": res = Int(arr[0]) ?? 0 != Int(arr[2]) ?? 0
        default: break
        }
        print("Case \(i): \(res)")
        i += 1
    }
}
/*
3 != 3
4 < 4
4 <= 5
3 E 3
*/
