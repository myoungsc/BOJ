//
//  main.swift
//  10768
//
//  Created by myoung on 21/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let input2 = readLine() {
    let month = Int(input) ?? 0
    let day = Int(input2) ?? 0
    if month == 2 && day == 18 {
        print("Special")
    } else {
        if month <= 2  {
            print(day < 18 ? "Before" :  month == 1 ? "Before" : "After")
        } else {
            print("After")
        }
    }
}
