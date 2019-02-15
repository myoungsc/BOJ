//
//  main.swift
//  1924
//
//  Created by myoung on 15/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var month = 0, day = 0
var monthDayCounts = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var dayOfWeeks = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]

if let input = readLine() {
    let temp = input.split{ $0 == " " }
    month = Int(temp[0]) ?? 0
    day = Int(temp[1]) ?? 0
}

var cacluDay = day
for i in 0 ..< month-1 {
    cacluDay += monthDayCounts[i]
}
print(dayOfWeeks[cacluDay%7])
