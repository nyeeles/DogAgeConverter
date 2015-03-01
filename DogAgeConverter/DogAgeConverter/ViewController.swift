//
//  ViewController.swift
//  DogAgeConverter
//
//  Created by Nic Yeeles on 01/03/2015.
//  Copyright (c) 2015 Nic Yeeles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var dogAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAgeButton(sender: UIButton) {
        dogAge.hidden = false
        var ageInput = ageTextField.text.toInt()!
        var convertedAge:Int

        if ageInput > 2 {
            convertedAge = (ageInput * 4)
        } else {
            convertedAge = (ageInput * 7)
        }

        dogAge.text = "Mr Pug is a grand total of \(convertedAge) years old"
        ageTextField.resignFirstResponder()
    }
}

