//
//  main.swift
//  13458
//
//  Created by 명수창 on 2021/10/21.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let _ = readLine(),
   let input2 = readLine(),
   let input3 = readLine() {
        
    let students = input2.split{ $0 == " " }.map{ Int(String($0))! }
    let directors = input3.split{ $0 == " " }.map{ Int(String($0))! }
    
    let allDirector = directors[0]
    let director = directors[1]
    
    var res = students.count
    for student in students {
        let temp = student - allDirector
        if temp <= 0 { continue }
        res += temp / director
        if temp % director > 0 {
            res += 1
        }
    }
    print(res)
}
