//
//  main.swift
//  1267
//
//  Created by 명수창 on 2021/11/09.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let _ = readLine()
let arr = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var yValue = 0, mValue = 0
for value in arr {
    yValue += 10*(value/30+1)
    mValue += 15*(value/60+1)
}
if yValue == mValue {
    print("Y M \(yValue)")
} else if yValue > mValue {
    print("M \(mValue)")
} else {
    print("Y \(yValue)")
}
