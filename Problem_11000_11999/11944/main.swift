//
//  main.swift
//  11944
//
//  Created by 명수창 on 2021/06/02.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let arr = input.split{ $0 == " " }.map{ Int(String($0))! }
    var res = ""
    for _ in 0 ..< arr[0] {
        if res.count < arr[1] {
            res += String(arr[0])
        } else {
            if res.count > arr[1] {
                let removeIndex = res.count - arr[1]
                for _ in 0 ..< removeIndex {
                    let _ = res.removeLast()
                }
            }
            break
        }
    }
    print(res)
}
