//
//  main.swift
//  1152
//
//  Created by myoung on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split { $0 == " " }
    print(arr.count)
}
