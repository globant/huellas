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
    func setUpUserTextField(){
        self.userTextField.backgroundColor = UIColor.clearColor()
        self.userTextField.layer.borderColor = UIColor.clearColor().CGColor
        self.userTextField.layer.borderWidth = 0
        self.userTextField.attributedPlaceholder = NSAttributedString(string:"Usuario", attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
    }
    
    func setUpPasswordTextField(){
        self.passwordTextField.backgroundColor = UIColor.clearColor()
        self.passwordTextField.layer.borderColor = UIColor.clearColor().CGColor
        self.passwordTextField.layer.borderWidth = 0
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string:"Contraseña", attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //This method is to dismiss keyboard
    @IBAction func onTapPressed(sender: AnyObject) {
        self.view.endEditing(true)
    }

    @IBAction func onLoginGPlusPressed(sender: AnyObject) {
        var storyboard = UIStoryboard(name: "MyProfile", bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier("ProfileViewController") as ProfileViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func onLoginFacebookPressed(sender: AnyObject) {
        
    }
    
    @IBAction func onLoginButtonPressed(sender: AnyObject) {
        
    }
}

