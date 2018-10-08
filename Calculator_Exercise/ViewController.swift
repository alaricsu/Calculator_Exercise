//
//  ViewController.swift
//  Calculator_Exercise
//
//  Created by as16afm on 08/10/2018.
//  Copyright © 2018 as16afm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func numberInput(_ sender: UIButton)
    {
        output.text = output.text! + String(sender.tag-1)
        numberOnScreen = Double(output.text!)!
    }
    
    @IBAction func actionButton(_ sender: UIButton)
    {
        if output.text != "" && sender.tag != 11 && sender.tag != 16
        {
            if sender.tag == 12 //Division
            {
                
            }
            else if sender.tag == 13 //Multiplication
            {
                
            }
            else if sender.tag == 14 //Subtraction
            {
                
            }
            else if sender.tag == 15 //Addition
            {
                
            }
        }
    }
    

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

