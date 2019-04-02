//
//  main.swift
//  2864
//
//  Created by myoung on 02/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func changeMaxMin(_ value: Int, ismaxmin: Bool) -> Int {
    var res = 0, divi = 100000, a = value
    while divi > 0 {
        if a/divi == 0 {
            divi = divi/10
            continue
        }
        let temp = a/divi
        if ismaxmin {
            res += temp == 6 ? 5 * divi : temp * divi
        } else {
            res += temp == 5 ? 6 * divi : temp * divi
        }
        a = a%divi
        divi = divi/10
    }
    return res
}

if let input = readLine() {
    var temps = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let min = changeMaxMin(temps[0], ismaxmin: true) + changeMaxMin(temps[1], ismaxmin: true)
    let max = changeMaxMin(temps[0], ismaxmin: false) + changeMaxMin(temps[1], ismaxmin: false)
    print("\(min) \(max)")
}
