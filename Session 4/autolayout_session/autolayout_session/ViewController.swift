//
//  ViewController.swift
//  autolayout_session
//
//  Created by Ahmed Abodeif on 4/15/17.
//  Copyright © 2017 Ahmed Abodeif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leftLabels: [UILabel]!
    @IBOutlet var rightLabels: [UILabel]!
    
    @IBOutlet weak var text_field_1: UITextField!
    @IBOutlet weak var test_field_2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func duplicateLeft(_ sender: Any) {
        for theLabel in leftLabels {
            theLabel.text = theLabel.text! + " " + theLabel.text!
        }
        
    }
    

    @IBAction func duplicateRight(_ sender: Any) {
        
        for theLabel in rightLabels {
            theLabel.text = theLabel.text! + " " + theLabel.text!
        }
        text_field_1.text = text_field_1.text! + text_field_1.text!
        test_field_2.text = test_field_2.text! + test_field_2.text!
        
        print("duplicate right")
    }
    
    
    

}

