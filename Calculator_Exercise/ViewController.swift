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
    var previousNumber: Double = 0;
    var performCalculation = false
    var operation = 0;
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func numberInput(_ sender: UIButton)
    {
        if performCalculation == true
        {
            output.text = String(sender.tag-1)
            numberOnScreen = Double(output.text!)!
            performCalculation = false;
        }
        else
        {
            output.text = output.text! + String(sender.tag-1)
            numberOnScreen = Double(output.text!)!
        }
    }
    
    @IBAction func actionButton(_ sender: UIButton)
    {
        if output.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(output.text!)!
            if sender.tag == 12 //Display division sign
            {
                output.text = "/";
            }
            else if sender.tag == 13 //Display multiplication sign
            {
                output.text = "x";
            }
            else if sender.tag == 14 //Display subtraction sign
            {
                output.text = "-";
            }
            else if sender.tag == 15 //Display addition sign
            {
                output.text = "+";
            }
            performCalculation = true;
            operation = sender.tag
        }
        else if sender.tag == 16
        {
            if operation == 12 //Perform division operation
            {
                output.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13 //Perform multiplicaion operation
            {
                output.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14 //Perform subtraction operation
            {
                output.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15 //Perform addition operation
            {
                output.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            output.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
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

