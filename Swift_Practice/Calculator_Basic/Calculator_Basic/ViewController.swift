//
//  ViewController.swift
//  Calculator_Basic
//
//  Created by 김믿음 on 2020/05/21.
//  Copyright © 2020 김믿음. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var lastNum : Int = 0
    
    
    
//    MARK:
    @IBOutlet weak var firstNumField : UITextField!
    @IBOutlet weak var opField : UITextField!
    @IBOutlet weak var secondNumField : UITextField!
    @IBOutlet weak var resultLabel : UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func equalButtonClicked(_ sender: UIButton){
        calculator()
    }
    
    @IBAction func resetButtonClicked(_ sender: UIButton){
        resultLabel.text = "Label"
        firstNumField.text = nil
        opField.text = nil
        secondNumField.text = nil
    }
    
    func calculator() {
        guard let first = firstNumField.text else {return}
        guard let firstNum = Int(first) else { return }
        guard let second = secondNumField
            .text else {return}
        guard let secondNum = Int(second) else {return}
        
        if opField.text != nil{
            if opField.text == "+" {
                lastNum = firstNum + secondNum
            }else if opField.text == "-" {
                lastNum = firstNum - secondNum
            }else if opField.text == "*" {
                lastNum = firstNum * secondNum
            }else if opField.text == "/" {
                lastNum = firstNum / secondNum
            }else {
               return resultLabel.text = "Label"
            }
            resultLabel.text = String(lastNum)
        }
    }
}


