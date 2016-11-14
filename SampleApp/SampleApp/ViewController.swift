//
//  ViewController.swift
//  SampleApp
//
//  Created by King, Daniel on 11/7/16.
//  Copyright © 2016 King, Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lowerBoundField: UITextField!
    @IBOutlet var upperBoundField: UITextField!
    @IBOutlet var generatedValueLabel: UILabel!
    

    @IBAction func generate(sender: UIButton) {
        let lower: UInt32 = UInt32(lowerBoundField.text!)!
        let upper: UInt32 = UInt32(upperBoundField.text!)!
    
        let randomNumber = arc4random_uniform(upper - lower+1) + lower
        generatedValueLabel.text = "Result: " + String(randomNumber)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        generatedValueLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

