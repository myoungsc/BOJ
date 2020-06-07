//
//  main.swift
//  15963
//
//  Created by myoung on 2020/06/08.
//  Copyright © 2020 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int(String($0)) ?? 0 }
    if (arr[0] == arr[1]) {
        print(1)
    } else {
        print(0)
    }
}
