//
//  ViewController.swift
//  BullsEye
//
//  Created by Ahmed Abodeif on 4/8/17.
//  Copyright © 2017 Ahmed Abodeif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue:Int = 0
    var targetValue: Int = 0
    @IBOutlet var mySlider: UISlider!
    @IBOutlet var getScorePanel: UILabel!
    @IBOutlet var currentScorePanel: UILabel!
    @IBOutlet var currentRound: UILabel!
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        mySlider.value = Float(currentValue)
        getScorePanel.text = String(targetValue)
        var tmpInt :Int = Int(currentRound.text!)!
        currentRound.text = String(tmpInt+1)
    }
    
    @IBAction func resetGame() {
        getScorePanel.text = String(0)
        currentRound.text = String(0)
        currentScorePanel.text = String(0)
        startNewRound()
    }
    
    @IBAction func showInfo() {
        let currentScore:Int = Int(currentScorePanel.text!)!
        let rounds:Int = Int(currentRound.text!)!
        let alert = UIAlertController(title: "Nice", message: "You scores: \(currentScore)" + " in \(rounds) rounds.", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mySlider.setThumbImage(#imageLiteral(resourceName: "SliderThumb-Normal"), for: .normal)
        var myImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let myInsets : UIEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 20)
        myImage = myImage.resizableImage(withCapInsets: myInsets)
        mySlider.setMaximumTrackImage(myImage, for: .normal)
        myImage = #imageLiteral(resourceName: "SliderTrackRight")
        myImage = myImage.resizableImage(withCapInsets: myInsets)
        mySlider.setMaximumTrackImage(myImage, for: .normal)
        mySlider.setMaximumTrackImage(myImage, for: .normal)
        startNewRound()
        currentScorePanel.text = String(0)
        currentRound.text = String(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Nice", message: "You scored: \(currentValue)", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        let diff = abs(currentValue - targetValue)
        var myInt:Int = Int(currentScorePanel.text!)!
        myInt = myInt + (100 - diff)
        if(diff == 0){
            myInt = myInt + 100
        } else {
            if(diff < 5){
                myInt = myInt + 50
            }
        }
        currentScorePanel.text = String(myInt);
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider ) {
        currentValue = lroundf(slider.value)
    }


}

