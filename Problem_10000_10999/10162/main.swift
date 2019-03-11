//
//  main.swift
//  10162
//
//  Created by myoung on 11/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var timeValue = Int(input) ?? 0
    
    let times = [300, 60, 10]
    var res: [Int] = [0, 0, 0]
    for (i, element) in times.enumerated() {
        if timeValue >= element {
            res[i] = timeValue / element
            timeValue = timeValue % element
        }
    }
    print(timeValue != 0 ? "-1" : res.map{ String($0) }.joined(separator: " "))
}
