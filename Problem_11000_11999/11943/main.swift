//
//  main.swift
//  11943
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var one: [Int] = [], two: [Int] = []
if let input = readLine(), let input2 = readLine() {
    one = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    two = input2.split{ $0 == " " }.map{ Int($0) ?? 0 }
    print(one[0] + two[1] > one[1] + two[0] ? one[1]+two[0] : one[0]+two[1])
}
