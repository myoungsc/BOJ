//
//  main.swift
//  2789
//
//  Created by myoung on 22/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

let censorship: [Character] = ["C", "A", "M", "B", "R", "I", "D", "G", "E"]
if let input = readLine() {
    print(input.filter{ !censorship.contains($0) })
}
