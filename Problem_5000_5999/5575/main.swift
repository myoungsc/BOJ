//
//  main.swift
//  5575
//
//  Created by maccli1 on 08/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

for _ in 0 ..< 3 {
    if let input = readLine() {
        let temp = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        let sub = (temp[3] * 3600 + temp[4] * 60 + temp[5]) - (temp[0] * 3600 + temp[1] * 60 + temp[2])
        let hour = sub/3600
        let min = (sub%3600)/60
        let second = (sub%3600)%60
        print(hour, min, second)
    }
}
