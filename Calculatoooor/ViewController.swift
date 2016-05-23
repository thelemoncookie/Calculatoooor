//
//  ViewController.swift
//  Calculatoooor
//
//  Created by Darlene Phan on 5/22/16.
//  Copyright © 2016 Darlene Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var display: UITextField!
  
  var number: String = ""
  var userTyping = false
  var decimal: Bool = false
  var result = Double()
  var currentNumber = Double()
  var currentOperation = String()
  
  
  var total:Double = 0.0
  var subTotal:Double = 0.0
  

  
  
//  func appendNumber (sender: UILabel) {
//    let digit = sender.text
//    if userTyping {
//      display.text = display.text! + digit!
//    }
//    else {
//        display.text = digit
//        userTyping = true
//    }
//  }
  

  
  @IBAction func number1(sender: UIButton) {

    
    let digit = sender.currentTitle
    if userTyping {
      display.text = display.text! + digit!
    }
    else {
      display.text = digit
      userTyping = true
    }
  }
  
  @IBAction func decimal(sender: UIButton) {
  }
  
  @IBAction func plusMinus(sender: UIButton) {
  }
  
  
  @IBAction func operate(sender: UIButton) {
    switch currentOperation {
//      case "+":
//        result = result + currentNumber
//      case "-":
//        result = result - currentNumber
//      case "x":
//        result = result * currentNumber
//      case "/":
//        result = result / currentNumber
    default:
      break
      
    }
  }
  
  @IBAction func enter(sender: UIButton) {

    
  }
  
  func calculate(op:String) {

  }
  @IBAction func clear(sender: UIButton) {
    number = ""
    decimal = false
    reloadDisplay()
    
  }
  
  func reloadDisplay(){
    display.text = "\(number)"
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    currentOperation = "="
    display.text = ("\(result)")
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

