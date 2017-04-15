//
//  ViewController.swift
//  memory
//
//  Created by Ahmed Abodeif on 4/15/17.
//  Copyright © 2017 Ahmed Abodeif. All rights reserved.
//

import UIKit


var firstClick = false

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("looping over button")
        var i = 0
        // Do any additional setup after loading the view, typically from a nib.
        for case let button as UIButton in self.view.subviews {
            print("looping over button")
            button.tag = i
            button.addTarget(self,action:#selector(ViewController.buttonClicked),
                             for:.touchUpInside)
            i = i + 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonClicked(button: UIButton) {
        print("button clicked")
        print(button.tag)
    }
    
    


}

