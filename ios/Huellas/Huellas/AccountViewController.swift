//
//  AccountViewController.swift
//  Huellas
//
//  Created by Maximiliano Casal on 4/15/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//


import UIKit

class AccountViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var termsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpUserTextField()
        self.setUpMailTextField()
        self.setUpPasswordTextField()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpUserTextField(){
        self.nameTextField.backgroundColor = UIColor.clearColor()
        self.nameTextField.layer.borderColor = UIColor.clearColor().CGColor
        self.nameTextField.layer.borderWidth = 0
        self.nameTextField.attributedPlaceholder = NSAttributedString(string:"Nombre y apellido", attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
    }
    
    func setUpMailTextField(){
        self.mailTextField.backgroundColor = UIColor.clearColor()
        self.mailTextField.layer.borderColor = UIColor.clearColor().CGColor
        self.mailTextField.layer.borderWidth = 0
        self.mailTextField.attributedPlaceholder = NSAttributedString(string:"Correo electrónico", attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
    }
    
    func setUpPasswordTextField(){
        self.passwordTextField.backgroundColor = UIColor.clearColor()
        self.passwordTextField.layer.borderColor = UIColor.clearColor().CGColor
        self.passwordTextField.layer.borderWidth = 0
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string:"Contraseña", attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
    }
    
    @IBAction func onTermsPressed(sender: AnyObject) {
    }
}