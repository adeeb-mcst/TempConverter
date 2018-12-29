//
//  ViewController.swift
//  TempConverter
//
//  Created by Mac on 12/11/18.
//  Copyright © 2018 Adeeb.MCST. All rights reserved.
//

import UIKit

//var cTemp = 0.0
//var fTemp = 0.0

class ViewController: UIViewController {
    @IBOutlet weak var cfText: UITextField!
    @IBOutlet weak var rText: UITextField!
    @IBOutlet weak var cfState: UISegmentedControl!
    @IBOutlet weak var cfLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tReset()
        
    }
    
    @IBAction func tReset() {
        cfText.text = ""
        rText.text = cfState.selectedSegmentIndex==0 ? "ºF" : "ºC"
    }
    
    @IBAction func tConvert() {
        var str = "0.0"
        str = cfText.text!
        if(cfState.selectedSegmentIndex == 0) {
            rText.text = String(format: "%.2f",(Double(str)! * 9/5) + 32)+" ºF"
        }else {
            rText.text = String(format: "%.2f",((Double(str)!-32) * 5/9))+" ºC"
        }
    }
    
    @IBAction func cfStateSelector() {
        //cfState.isEnabled = !cfState.isEnabled
        if(cfState.selectedSegmentIndex == 0) {
            cfLabel.text = "Convert from ºC to ºF"
        }else {
            cfLabel.text = "Convert from ºF to ºC"
        }
        //cfState.isEnabled = !cfState.isEnabled
        tReset()
    }


}

