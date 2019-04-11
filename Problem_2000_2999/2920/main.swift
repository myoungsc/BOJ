//
//  main.swift
//  2920
//
//  Created by myoung on 11/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

let ascendings = [1, 2, 3, 4, 5, 6, 7, 8]
let descendings = ascendings.sorted { $0 > $1 }

var inputs: [Int] = []
if let input = readLine() {
    inputs = input.split { $0 == " " }.map { Int($0) ?? 0 }
}

if inputs == ascendings {
    print("ascending")
} else if inputs == descendings {
    print("descending")
} else {
    print("mixed")
}
