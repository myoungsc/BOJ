//
//  main.swift
//  15781
//
//  Created by myoung on 08/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let _ = readLine() {
    if let input = readLine(), let input2 = readLine() {
        let helmet = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.max() ?? 0
        let vest = input2.split{ $0 == " " }.map{ Int($0) ?? 0 }.max() ?? 0
        print(helmet+vest)
    }
}
