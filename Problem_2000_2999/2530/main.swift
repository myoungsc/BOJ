//
//  main.swift
//  2530
//
//  Created by myoung on 04/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var time = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    
    if let input = readLine() {
        let cook = Int(input) ?? 0
        var temp = time[2] + cook
        
        let minUp = temp / 60
        time[2] = temp % 60
        
        temp = time[1] + minUp
        
        let hourUp = temp / 60
        time[1] = temp % 60
        
        temp = time[0] + hourUp
        time[0] = temp % 24
        
        print(time.map{ String($0) }.joined(separator: " "))
    }
}
