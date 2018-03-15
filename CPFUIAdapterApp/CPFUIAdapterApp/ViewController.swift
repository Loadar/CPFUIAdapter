//
//  ViewController.swift
//  CPFUIAdapterApp
//
//  Created by Aaron on 2018/3/14.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Int
        print("Int:", 10.cpfX, 10.cpfY, 10.cpfS)
        // Float
        let f: Float = 10.0
        print("Float:", f.cpfX, f.cpfY, f.cpfS)
        // Double
        print("Double:", 10.0.cpfX, 10.0.cpfY, 10.0.cpfS)
        // CGFloat
        let cgf: Float = 10.0
        print("CGFloat:", cgf.cpfX, cgf.cpfY, cgf.cpfS)

        // Point
        let p = CGPoint(x: 10, y: 20)
        print("Point:", p.cpfXY, p.cpfS)
        // Size
        let s = CGSize(width: 33, height: 44)
        print("Size:", s.cpfXY, s.cpfS)
        // Rect
        let r = CGRect(x: 25, y: 86, width: 334, height: 256)
        print("Rect:", r.cpfXY, r.cpfS)
        // UIEdgeInsets
        let insets = UIEdgeInsets(top: 89, left: 27, bottom: 64, right: 93)
        print("EdgeInsets:", insets.cpfXY, insets.cpfS)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

