//
//  main.swift
//  1978
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var count = 0
if let input = readLine() {
    let _ = Int(input) ?? 0
    var isPrime = true
    if let value = readLine() {
        let temps = value.split{ $0 == " "}.map{ Int($0) ?? 0 }
        for temp in temps {
            
            if temp != 1 {
                for i in 2 ..< temp {
                    if temp%i == 0 {
                        isPrime = false
                        break
                    }
                }
                
                if isPrime {
                    count += 1
                } else {
                    isPrime = true
                }
            }
        }
    }
    print(count)
}

