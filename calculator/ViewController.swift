//
//  ViewController.swift
//  calculator
//
//  Created by 1234 on 20/07/2024.
//

import UIKit

class ViewController: UIViewController {
    var lastWorkingVal = 0
    var operation: operationsEnum?
    @IBOutlet weak var workingLabel: UILabel!
    @IBOutlet weak var workedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addBtn(_ sender: UIButton) {
        guard let workingval = workingLabel.text , workingval.count > 0 else {
            return
            }
        
        calculateOperation()
        operation = .addition
        workedLabel.text = String(lastWorkingVal)
        workingLabel.text = "0"
//        if let number = Int(workingval) , let lastworked = workedLabel.text, lastworked != "0"{
//            lastWorkingVal += number
//            workedLabel.text = String(lastWorkingVal)
//            workingLabel.text = "0"
//        }else {
//            workedLabel.text = workingLabel.text
//            workingLabel.text = "0"
//        }
        
        
    }
    @IBAction func equalBtn(_ sender: UIButton) {
        guard let workingval = workingLabel.text , workingval.count > 0 else {
            return
            }
        calculateOperation()
        workingLabel.text = String(lastWorkingVal)
        workedLabel.text = "0"

    }
    @IBAction func ACBtn(_ sender: UIButton) {
        workedLabel.text = ""
        workingLabel.text = ""
        lastWorkingVal = 0
    }
    
    @IBAction func minusBtn(_ sender: UIButton) {
        guard let workingval = workingLabel.text , workingval.count > 0 else {
            return
            }
        
        calculateOperation()
        operation = .subtraction
        workedLabel.text = String(lastWorkingVal)
        workingLabel.text = "0"
//        if let number = Int(workingval) , let lastworked = workedLabel.text, lastworked != "0"{
//            lastWorkingVal -= number
//            workedLabel.text = String(lastWorkingVal)
//            workingLabel.text = "0"
//        }else {
//            workedLabel.text = workingLabel.text
//            workingLabel.text = "0"
//        }
        
    }
    @IBAction func nineBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "9")

    }
    @IBAction func eightBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "8")

    }
    @IBAction func sevenBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "7")

    }
    @IBAction func sixBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "6")

    }
    @IBAction func fiveBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "5")

    }
    
    @IBAction func fourBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "4")

    }
    @IBAction func threeBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "3")

    }
    @IBAction func twoBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "2")

    }
   
    @IBAction func oneBtn(_ sender: UIButton) {
        addValuetoWorkingLabel(value: "1")

    }
    
    @IBAction func zeroBtn(_ sender: UIButton) {
       addValuetoWorkingLabel(value: "0")
        
    }
       
}
extension ViewController {
    
    private func addValuetoWorkingLabel(value: String){
        if let _ = workedLabel.text {
            workingLabel.text! += value
            return
        }
        workingLabel.text = value
    }
    
    private func calculateOperation (){
        guard let val = workingLabel.text, let number = Int(val) else {return}
        switch operation {
        case .addition:
            lastWorkingVal += number
        case .subtraction:
            lastWorkingVal -= number
        case .none:
            lastWorkingVal = number
        }
        operation = .none
    }
}

