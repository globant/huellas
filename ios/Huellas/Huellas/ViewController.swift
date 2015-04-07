//
//  ViewController.swift
//  Huellas
//
//  Created by fabian marino on 3/25/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBAction func act(sender: AnyObject) {
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
    override func viewDidLoad() {
        super.viewDidLoad()
   
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

