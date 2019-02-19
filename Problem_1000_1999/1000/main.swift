//
//  main.swift
//  1000
//
//  Created by myoung on 08/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

import Foundation

if let input = readLine() {
    print(input.split{ $0 == " " }.map{ Int($0) ?? 0 }.reduce(0, +))
}
