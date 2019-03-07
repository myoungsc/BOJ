//
//  main.swift
//  10599
//
//  Created by myoung on 05/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine(), input != "0 0 0 0" {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    print(value[2]-value[1], value[3]-value[0])
}   
