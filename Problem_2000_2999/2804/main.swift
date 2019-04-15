//
//  main.swift
//  2804
//
//  Created by myoung on 15/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let temps = input.split{ $0 == " " }.map{ String($0) }
    var overlap = ""
    var overlapIndex = -1
    
    for str in temps[1] {
        if temps[0].contains(str) {
            let range: Range<String.Index> = temps[0].range(of: String(str))!
            let index: Int = temps[0].distance(from: temps[0].startIndex, to: range.lowerBound)
            if overlapIndex > index || overlapIndex == -1 {
                overlap = String(str)
                overlapIndex = index
            }
        }
    }
    
    let range: Range<String.Index> = temps[0].range(of: overlap)!
    let index: Int = temps[0].distance(from: temps[0].startIndex, to: range.lowerBound)
    
    var flag = false
    for (_, str) in temps[1].enumerated()  {
        var res = ""
        if String(str) != overlap || flag {
            for _ in 0 ..< index { res += "." }
            res += String(str)
            for _ in index ..< temps[0].count-1 { res += "." }
        } else  {
            res = temps[0]
            flag = true
        }
        print(res)
    }
}
