//
//  main.swift
//  1431
//
//  Created by myoung on 22/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

let calculotorNumber = { (a: String) -> Int in
    a.reduce(0, {
        let count = Int("\($1)")
        return count == nil ? $0 : count! + $0
    })
}

if let input = readLine() {
    let n = Int(input) ?? 0
    var res: [String] = []
    for _ in 0 ..< n {
        if let input = readLine() {
            res.append(input)
        }
    }
    res = res.sorted {
        if $0.count == $1.count {
            if calculotorNumber($0) == calculotorNumber($1) {
                return $0 < $1
            } else {
                return calculotorNumber($0) < calculotorNumber($1)
            }
        } else {
            return $0.count < $1.count
        }
    }
    for element in res {  print(element) }
}


/* 수정 전
func srotedString(a: String, b: String) -> Bool {
    return a.map({ (char) -> Int in
        Int(String(char)) ?? 0
    }).reduce(0, +) == b.map({ (char) -> Int in
        Int(String(char)) ?? 0
    }).reduce(0, +)
}

func srotedString1(a: String, b: String) -> Bool {
    return a.map({ (char) -> Int in
        Int(String(char)) ?? 0
    }).reduce(0, +) < b.map({ (char) -> Int in
        Int(String(char)) ?? 0
    }).reduce(0, +)
}

func srotedString2(a: String, b: String) -> Bool {
    return a < b
}

if let input = readLine() {
    let n = Int(input) ?? 0
    
    var arr: [String] = []
    var temp: Set<Int> = []
    for _ in 0 ..< n {
        if let input = readLine() {
            arr.append(input)
            temp.insert(input.count)
        }
    }
    
    var counts = temp.sorted()
    var res: [String] = []
    while counts.count != 0 {
        let count = counts.removeFirst()
        var temp: [String] = []
        for element in arr {
            if element.count == count {
                temp.append(element)
            }
        }
        temp = temp.sorted{ srotedString(a: $0, b: $1) ? srotedString2(a: $0, b: $1) : srotedString1(a: $0, b: $1) }
        res += temp
    }
    
    for element in res {
        print(element)
    }
}
*/
