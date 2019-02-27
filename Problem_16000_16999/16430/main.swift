//
//  main.swift
//  16430
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let allKG = value[1]
    let steal = value[0]
    print("\(allKG-steal) \(allKG)")
}
