//
//  ViewController.swift
//  Huellas
//
//  Created by fabian marino on 3/25/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let transparent = UIColor.clearColor().CGColor

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUserTextField()
        self.setUpPasswordTextField()
    }
    func setUpUserTextField() {

        let attriString = NSAttributedString(string:"Usuario", attributes:
            [NSForegroundColorAttributeName: UIColor.lightGrayColor()])
     
        self.userTextField.backgroundColor = UIColor.clearColor()
        self.userTextField.attributedPlaceholder = attriString
        self.userTextField.layer.borderColor = transparent
    }
    
    func setUpPasswordTextField() {
        let attriString = NSAttributedString(string:"Contraseña", attributes:
            [NSForegroundColorAttributeName: UIColor.lightGrayColor()])
        
        self.passwordTextField.backgroundColor = UIColor.clearColor()
        self.passwordTextField.attributedPlaceholder = attriString
        self.passwordTextField.layer.borderColor = transparent
    }
    
    @IBAction func onTapGesture(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

