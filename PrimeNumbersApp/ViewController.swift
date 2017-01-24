//
//  ViewController.swift
//  PrimeNumbersApp
//
//  Created by Ícaro Brandão on 24/01/17.
//  Copyright © 2017 Ícaro Brandão. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func isItFunction(_ sender: Any) {
       
        var i = 2
        var isPrime = true
        if let numberString = number.text {
            if  let numberVar = Int(numberString){
                if numberVar > 0 {
                    while i < numberVar {
                        if numberVar % i == 0 {
                            isPrime = false
                        }
                        i += 1
                    }
                    if isPrime {
                        result.text = "\(numberVar) is prime!"
                    }else{
                        result.text = "\(numberVar) is not prime!"
                    }
                }else{
                    result.text = "enter a number greater than 0!"
                }
            }else{
                result.text = "please enter a number!"
            }
        }else{
            result.text = "please enter a number!"
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
