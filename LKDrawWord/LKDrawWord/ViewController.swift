//
//  ViewController.swift
//  LKDrawWord
//
//  Created by lkk on 15-2-5.
//  Copyright (c) 2015年 lkk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var word: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
       
//      CFString 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    @IBAction func beganDraw(sender: UIButton) {
        for(var i = 0; i < self.view.layer.sublayers.count; i++){
            var layer: AnyObject = self.view.layer.sublayers[i]
            if(layer.isKindOfClass(LKDrawWordLayer)){
                layer.removeFromSuperlayer()
            }
        }
         LKDrawWordLayer.createAnimation(word.text, font: UIFont.systemFontOfSize(50), rect: CGRectMake(0, 118, self.view.frame.size.width, self.view.frame.size.height - 118), view: self.view, color: UIColor.redColor())
        self.view.endEditing(true)
        println(sender.frame)
    }
   

}

