//
//  main.swift
//  10769
//
//  Created by myoung on 09/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.map{ String($0) }
    var happyCount = 0, sadCount = 0
    for i in 0 ..< arr.count-2 {
        let res = arr[i]+arr[i+1]+arr[i+2]
        if res == ":-)" {
            happyCount += 1
        } else if res == ":-(" {
            sadCount += 1
        }
    }
    if happyCount == 0 && sadCount == 0 {
        print("none")
    } else {
        print(happyCount == sadCount ? "unsure" : happyCount > sadCount ? "happy" : "sad")
    }
}
