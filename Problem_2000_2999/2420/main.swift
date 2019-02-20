//
//  main.swift
//  2420
//
//  Created by myoung on 20/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.reduce(0) { -$0-$1 }
    print(value.magnitude)
}
