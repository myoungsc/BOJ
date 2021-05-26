//
//  main.swift
//  11575
//
//  Created by myoung on 2021/05/26.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

var key = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

if let n = Int(readLine()!) {
    for _ in 0 ..< n {
        var res = ""
        if let input = readLine(), let input2 = readLine() {
            let ab = input.split{ $0 == " " }.map{ Int(String($0))! }
            for char in input2 {
                res += substitutionChar(ab[0], ab[1], Int(char.asciiValue!))
            }
            print(res)
        }
    }
}

func substitutionChar(_ a: Int, _ b: Int, _ ascii: Int) -> String {
    let value = (((ascii - 65) * a) + b) % 26
    return key[value]
}


