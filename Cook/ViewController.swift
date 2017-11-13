//
//  ViewController.swift
//  Cook
//
//  Created by Boateng Yeboah on 13/11/2017.
//  Copyright © 2017 Boateng Yeboah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefaultLabelText(_ sender: Any) {
        titleLabel.text = "Hello world"
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        titleLabel.text = textField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard, text field should resign its first-responder status when the user taps a button to end editing in the text field.
        textField.resignFirstResponder()
        return true
    }


}
 
