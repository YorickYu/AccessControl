//
//  ViewController.swift
//  TestPrivate
//
//  Created by YY on 2018/5/9.
//  Copyright © 2018年 YY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let aclass = A()
        aclass.a_openFunc()
        aclass.a_publicFunc()
        aclass.a_privateFunc()
        aclass.a_fileprivateFunc()
        
        aclass.a_openVar = 2
        aclass.a_publicVar = 2
        aclass.a_privateVar = 2
        aclass.a_fileprivateVar = 2
        
    }
    
    private func vcprivateFunc(){}
    fileprivate func vcfileprivateFunc(){}
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class vx: UIViewController {
    override func viewDidLoad() {
        let vc = UIViewController()
        vc.
    }
}

