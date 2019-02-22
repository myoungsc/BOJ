//
//  main.swift
//  1718
//
//  Created by myoung on 22/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine(), let input2 = readLine() {
    let message = input.map{ $0 }
    let scretKey = input2.map{ $0 }
    
    var res = ""
    var keyIndex = 0
    for element in message {
        if element == " " {
            res.append(" ")
            keyIndex += 1
            if keyIndex == scretKey.count { keyIndex = 0 }
            continue
        }
        let msgAscii = (element.unicodeScalars.first?.value ?? 0) - 97
        let scretAscii = (scretKey[keyIndex].unicodeScalars.first?.value ?? 0) - 97
        
        if msgAscii > scretAscii {
            res.append(Character(UnicodeScalar(msgAscii-scretAscii+96)!))
        } else {
            let temp = 122 - (scretAscii - msgAscii)
            res.append(Character(UnicodeScalar(temp)!))
        }
        keyIndex += 1
        if keyIndex == scretKey.count { keyIndex = 0 }
    }
    print(res)
}
