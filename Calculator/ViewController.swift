//
//  ViewController.swift
//  Calculator
//
//  Created by Tech on 2020-01-22.
//  Copyright © 2020 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttons(_ sender: UIButton) {
        previousNumber = Double(Output.text!)!
        if sender.tag == 12 { //Divide
            Output.text = "/";
        }
        if sender.tag == 13 { //Multiply
            Output.text = "x";
        }
        if sender.tag == 14 { //Subtract
            Output.text = "-";
        }
        if sender.tag == 15 { //Add
            Output.text = "+";
        }
        operation = sender.tag
        performingMath = true;
        if sender.tag == 16 {
            if operation == 12{ //Divide
            Output.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13{ //Multiply
            Output.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14{ //Subtract
            Output.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15{ //Add
            Output.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11{
            Output.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false;
    var operation = 0;
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath {
            Output.text = String(sender.tag - 1)
            numberOnScreen = Double(Output.text!)!
            performingMath = false;
        } else {
            Output.text = Output.text! + String(sender.tag - 1)
            numberOnScreen = Double(Output.text!)!
        }
    }
    @IBOutlet weak var Output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

