//
//  main.swift
//  2752
//
//  Created by myoung on 20/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let res = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.sorted().map{ String($0) }.joined(separator: " ")
    print(res)
}
