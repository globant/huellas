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
    var areTermsAccepted = false
    
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
    
    @IBAction func onCreateAccountPressed(sender: AnyObject) {
        let fullName = self.nameTextField.text
        let email = self.mailTextField.text
        let password = self.passwordTextField.text
        
        if (!fullName.isEmpty) && (!email.isEmpty) && (!password.isEmpty) && areTermsAccepted
        {
            createUser(fullName, email: email, password: password)
            showAlert()
        }
    }
    
    func showAlert() {
        
    }
    
    func createUser (name: NSString, email: NSString, password: NSString) {
    
    }
    
    @IBAction func onTermsPressed(sender: AnyObject) {
        self.areTermsAccepted = !self.areTermsAccepted
        
        if self.areTermsAccepted {
            let image = UIImage(named: "accept-checked")
            self.termsButton.setImage(image, forState: UIControlState.Normal)
        }else{
            let image = UIImage(named: "accept-unchecked")
            self.termsButton.setImage(image, forState: UIControlState.Normal)
        }
    }
}