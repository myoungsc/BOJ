//
//  main.swift
//  1032
//
//  Created by 명수창 on 2021/03/22.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let n = Int(input) {
    var strs: [[String]] = []
    for _ in 0 ..< n {
        if let fileName = readLine() {
            strs.append(fileName.map{ String($0) })
        }
    }
    var compare: Set<String> = Set<String>()
    var res = ""
    for i in 0 ..< strs[0].count {
        for item in strs {
            compare.insert(String(item[i]))
        }
        if compare.count > 1 {
            res.append("?")
        } else {
            res.append(compare.popFirst()!)
        }
        compare = Set<String>()
    }
    print(res)
}
