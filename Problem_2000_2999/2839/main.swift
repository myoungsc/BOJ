//
//  main.swift
//  2839
//
//  Created by myoung on 22/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var allKg = 0
if let input = readLine() {
    allKg = Int(input) ?? 0
}

var starter = allKg/5

while starter >= 0 {
    let remain = allKg - (starter * 5)
    if remain % 3 == 0 {
        print(starter + remain / 3)
        break
    }
    starter = starter - 1
    if (starter == -1) { print(-1)}
}
