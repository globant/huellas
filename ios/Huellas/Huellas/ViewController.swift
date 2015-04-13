//
//  ViewController.swift
//  Huellas
//
//  Created by fabian marino on 3/25/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let permissions = ["public_profile"]
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
        PFFacebookUtils.logInWithPermissions(self.permissions, {
            (user: PFUser!, error: NSError!) -> Void in
            if user == nil {
                NSLog("Uh oh. The user cancelled the Facebook login.")
            } else{
                self.logedIn()
            }
            
        })
            }
    
    @IBAction func onLoginButtonPressed(sender: AnyObject) {
      
       self.logedIn()
        
    }
func logedIn(){
    let storyboard = UIStoryboard(name: "Home", bundle: nil)
    storyboard.instantiateInitialViewController()
    let fvc = storyboard.instantiateViewControllerWithIdentifier("inicioViewController") as InicioViewController
    let rvc = storyboard.instantiateViewControllerWithIdentifier("menuController") as MenuController
    
    let nfvc:UINavigationController = UINavigationController(rootViewController: fvc)
    let nrvc:UINavigationController = UINavigationController(rootViewController: rvc)
    let reveal:SWRevealViewController = storyboard.instantiateViewControllerWithIdentifier("revealViewController") as SWRevealViewController
    reveal.rearViewController = nrvc
    reveal.frontViewController = nfvc
    self.presentViewController(reveal, animated: true, completion: nil)
}

}

