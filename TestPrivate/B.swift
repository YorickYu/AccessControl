//
//  B.swift
//  TestPrivate
//
//  Created by YY on 2018/5/9.
//  Copyright © 2018年 YY. All rights reserved.
//

import UIKit

class B: A {
    
    override func a_openFunc() {}
    override func a_publicFunc() {}
    override func a_fileprivateFunc() {}
    override func a_privateFunc() {}
    
    func btest() {
        a_privateFunc()
        a_fileprivateFunc()
        a_openFunc()
        a_publicFunc()
        
        a_openVar = 1
        a_publicVar = 1
        a_privateVar = 1
        a_fileprivateVar = 1
    }
}

extension B {
    func bextetest() {
        a_openVar = 1
        a_publicVar = 1
        a_privateVar = 1
        a_fileprivateVar = 1
        
        a_privateFunc()
        a_fileprivateFunc()
        a_openFunc()
        a_publicFunc()
    }
}

extension A {
    func exteOutFile() {
        a_openVar = 1
        a_publicVar = 1
        a_privateVar = 1
        a_fileprivateVar = 1
        
        a_privateFunc()
        a_fileprivateFunc()
        a_openFunc()
        a_publicFunc()
    }
}
