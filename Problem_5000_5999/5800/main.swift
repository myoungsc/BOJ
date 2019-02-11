//
//  main.swift
//  5800
//
//  Created by myoung on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for i in 1 ... n {
        if let input = readLine() {
            let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            let score = values[1...values[0]].sorted{ $0 > $1 }
            
            var gap = 0
            for i in 0 ..< score.count-1 {
                if gap < score[i] - score[i+1] {
                    gap = score[i] - score[i+1]
                }
            }
            
            print("Class \(i)")
            print("Max \(score.first ?? 0), Min \(score.last ?? 0), Largest gap \(gap)")
        }
    }
}
