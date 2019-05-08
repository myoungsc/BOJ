//
//  main.swift
//  10474
//
//  Created by myoung on 08/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine(), input != "0 0" {
    let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    print("\(values[0] / values[1]) \(values[0] % values[1]) / \(values[1])")
}
