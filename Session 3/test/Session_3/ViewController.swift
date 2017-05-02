//
//  ViewController.swift
//  Session_3
//
//  Created by Nesreen Mamdouh on 4/15/17.
//  Copyright © 2017 Nesreen Mamdouh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leftLabels: [UILabel]!
    
    @IBOutlet var rightLabels: [UILabel]!
    
    @IBOutlet var textField_1: UITextField!
    
    @IBOutlet var textFeild_2: UITextField!
    
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
        
        textField_1.text = textField_1.text! + textField_1.text!
        textFeild_2.text = textFeild_2.text! + textFeild_2.text!
    }
}

