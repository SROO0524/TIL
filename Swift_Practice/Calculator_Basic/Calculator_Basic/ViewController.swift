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
    
    
    
//    MARK: Outlet 연결
    @IBOutlet weak var firstNumField : UITextField!
    @IBOutlet weak var opField : UITextField!
    @IBOutlet weak var secondNumField : UITextField!
    @IBOutlet weak var resultLabel : UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    
    @IBOutlet weak var plusButton : UIButton!
    @IBOutlet weak var minusButton : UIButton!
    @IBOutlet weak var multipleButton : UIButton!
    @IBOutlet weak var divisionButton : UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//   MARK: 두번 클릭했을 때의 UI제스처 정의
        let tap = UITapGestureRecognizer(target: self, action: #selector(resetTap))
        tap.numberOfTapsRequired = 2
        button.addGestureRecognizer(tap)
    }
//    MARK: 두번클릭 했을때 실제 액션 구현
    @objc func resetTap() {
        print("resetTap")
        reset()
    }
    
//    MARK: "=" Action
    @IBAction func equalButtonClicked(_ sender: UIButton){
        print(#function)
        calculator()
        
    }
//    MARK: "Reset" Action
    @IBAction func resetButtonClicked(_ sender: UIButton){
      reset()
    }
//    MARK: "=" 사칙연산 함수
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
            }else if opField.text == "✕" {
                lastNum = firstNum * secondNum
            }else if opField.text == "⁒" {
                lastNum = firstNum / secondNum
            }else {
               return resultLabel.text = nil
            }
            resultLabel.text = String(lastNum)
        }
    
    }
//    MARK: 숫자버튼 Action
    @IBAction func numberButtonClicked(_ btn: UIButton){
        let numBtn = btn.titleLabel?.text
        var lastFieldNum = firstNumField.text
        var lastScFieldNum = secondNumField.text
        
        
        if opField.text == "" {
            firstNumField.text = lastFieldNum! + numBtn!
        } else {
            secondNumField.text = lastScFieldNum! + numBtn!
        }
        
    }
//    MARK: 사칙연산버튼 Action
    @IBAction func operatorButtonClicked(_ btn: UIButton){
        let opBtn = btn.titleLabel?.text
        opField.text = opBtn
 
    }
    
    
//    MARK: Reset 함수
 
    func reset() {
        
        resultLabel.text = nil
        firstNumField.text = nil
        opField.text = nil
        secondNumField.text = nil
    }
}


