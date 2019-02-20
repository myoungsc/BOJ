//
//  main.swift
//  2525
//
//  Created by myoung on 20/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let input2 = readLine() {
    let currentTime = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let cookTime = Int(input2) ?? 0
    
    let min = currentTime[1] + cookTime
    let hour = currentTime[0] + (min / 60)
    
    print(hour%24, min%60)
}
