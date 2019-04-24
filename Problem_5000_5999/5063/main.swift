//
//  main.swift
//  5063
//
//  Created by myoung on 24/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let temps = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            
            if temps[0] == temps[1]-temps[2] {
                print("does not matter")
            } else if temps[0] > temps[1]-temps[2] {
                print("do not advertise")
            } else {
                print("advertise")
            }
        }
    }
}
