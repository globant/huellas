//
//  ProfileViewController.swift
//  Huellas
//
//  Created by Maximiliano Casal on 4/8/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var addPetButton: UIButton!
    @IBOutlet weak var reportsButton: UIButton!
    @IBOutlet weak var petsButton: UIButton!
    
    //    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageView = UIImageView()
        imageView.image = UIImage(named: "bg-miperfil.png")
        self.navigationItem.titleView = imageView
        
        
        self.updateReporsButton(false)
       self.convertProfileImageToCircle()
        
        //        if self.revealViewController() != nil {
        //            menuButton.target = self.revealViewController()
        //            menuButton.action = "revealToggle:"
        //            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        //        }
    }
    
    func convertProfileImageToCircle(){
        self.profileImage.layer.borderWidth=1.0
        self.profileImage.layer.masksToBounds = true
        self.profileImage.layer.borderColor = UIColor.whiteColor().CGColor
        self.profileImage.layer.cornerRadius = (self.profileImage.frame.size.height-25)/2
        self.profileImage.clipsToBounds = true
    }
    
    @IBAction func onPetsPressed(sender: AnyObject) {
        self.updateReporsButton(false)
    }
    
    @IBAction func onReportsPressed(sender: AnyObject) {
        self.updateReporsButton(true)
    }
    
    func updateReporsButton(isFromReport: Bool){
    
        if isFromReport{
            let image = UIImage(named: "btn-reportar") as UIImage!
            self.petsButton.imageView?.image = UIImage(named: "btn-misMascotas")
            self.reportsButton.imageView?.image = UIImage(named: "btn-selectedMisReportes")
            self.addPetButton.setImage(image, forState: UIControlState.Normal)
        }else{
            self.petsButton.imageView?.image = UIImage(named: "btn-selectedMisMascotas")
            self.reportsButton.imageView?.image = UIImage(named: "btn-misReportes")
                        self.addPetButton.imageView?.image=UIImage(named: "btn-agregarMascota")
        }
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
