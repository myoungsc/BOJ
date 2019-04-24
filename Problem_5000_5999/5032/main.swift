//
//  main.swift
//  5032
//
//  Created by myoung on 24/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let efc = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var bottle = efc[0] + efc[1], over = 0, newBottle = 0
    while bottle >= efc[2] {
        newBottle += bottle/efc[2]
        over = bottle%efc[2]
        bottle = over + bottle/efc[2]
    }
    print(newBottle)
}
