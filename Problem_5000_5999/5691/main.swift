//
//  main.swift
//  5691
//
//  Created by myoung on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

while let input = readLine() {
    if input == "0 0" { break }
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    print(value[0]-(value[1]-value[0]))
}
