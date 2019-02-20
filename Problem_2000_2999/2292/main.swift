//
//  main.swift
//  2292
//
//  Created by myoung on 20/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var upper = 1
    var count = 0
    while true {
        upper = upper + (count * 6)
        if n <= upper { break }
        count += 1
    }
    print(count+1)
}
