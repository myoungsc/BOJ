//
//  main.swift
//  5355
//
//  Created by myoung on 02/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for _ in 0 ..< (Int(input) ?? 0) {
        if let input = readLine() {
            let values = input.split{ $0 == " " }.map{ String($0) }
            var res: Double = Double(values[0]) ?? 0.0
            for i in 1 ..< values.count {
                switch values[i] {
                case "@": res *= 3
                case "%": res += 5
                case "#": res -= 7
                default: break
                }
            }
            print(NSString(format: "%.2f", res))
        }
    }
}
