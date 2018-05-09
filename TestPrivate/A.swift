//
//  A.swift
//  TestPrivate
//
//  Created by YY on 2018/5/9.
//  Copyright © 2018年 YY. All rights reserved.
//

import UIKit

class A: NSObject {
    private var a_privateVar = 0
    fileprivate var a_fileprivateVar = 0
    open var a_openVar = 0
    public var a_publicVar = 0

    
    private func a_privateFunc() {}
    fileprivate func a_fileprivateFunc() {}
    open func a_openFunc() {}
    public func a_publicFunc() {}
}


extension A {
    func extensionInFile() {
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

class C: A {
    
    override func a_openFunc() {}
    override func a_publicFunc() {}
    override func a_fileprivateFunc() {}
    override func a_privateFunc() {}
    
    func ctest() {
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

extension C {
    func cextetest() {
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
