//
//  ProfileViewController.swift
//  Huellas
//
//  Created by Maximiliano Casal on 4/8/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var addPetButton: UIButton!
    @IBOutlet weak var reportsButton: UIButton!
    @IBOutlet weak var petsButton: UIButton!
    var pets: NSMutableArray = []
    var reports: NSMutableArray = []
    var isReportsActive: Bool
    //@IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pets = NSMutableArray()
        self.reports = NSMutableArray()
        self.isReportsActive = false
        
        var imageView = UIImageView()
        imageView.image = UIImage(named: "bg-miperfil.png")
        self.navigationItem.titleView = imageView
        
        
        self.updateReporsButton(false)
        self.convertProfileImageToCircle()
        
        //if self.revealViewController() != nil {
        //  menuButton.target = self.revealViewController()
        //  menuButton.action = "revealToggle:"
        //  self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        //}
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
            let imageMyPets = UIImage(named: "btn-misMascotas") as UIImage!
            let imageMyReports = UIImage(named: "btn-selectedMisReportes") as UIImage!

            self.petsButton.setImage(imageMyPets, forState: UIControlState.Normal)
            self.reportsButton.setImage(imageMyReports, forState: UIControlState.Normal)
            self.addPetButton.setTitle("Reportar mascota", forState: UIControlState.Normal)
        }else{
            
            let imageMyPets = UIImage(named: "btn-selectedMisMascotas") as UIImage!
            let imageMyReports = UIImage(named: "btn-misReportes") as UIImage!
            
            self.petsButton.setImage(imageMyPets, forState: UIControlState.Normal)
            self.reportsButton.setImage(imageMyReports, forState: UIControlState.Normal)
            self.addPetButton.setTitle("Agregar Mascota", forState: UIControlState.Normal)
        }
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if self.isReportsActive {
            return self.reports.count
        }else {
            return self.pets.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if self.isReportsActive {
            return UITableViewCell()
        }else {
            return UITableViewCell()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.isReportsActive {
            return self.reports.count
        }else {
            return self.pets.count
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
