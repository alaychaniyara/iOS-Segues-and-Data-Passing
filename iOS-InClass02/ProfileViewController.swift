//
//  ProfileViewController.swift
//  iOS-InClass02
//
//  Created by Alay Chaniyara on 10/26/18.
//  Copyright © 2018 Alay Chaniyara. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
   
    @IBOutlet weak var nameField: UILabel!
    
    @IBOutlet weak var emailField: UILabel!
    
    @IBOutlet weak var passwordField: UILabel!
   
    @IBOutlet weak var buttonShow: UIButton!
    @IBOutlet weak var deptField: UILabel!
    var count = 0
    var pwd = ""
    var password = ""
    var userData:User = User(name: "", email: "", password: "", department: "")
    override func viewDidLoad() {
        super.viewDidLoad()

   // to get * instead of password
        count = userData.password.count
        for i in 1...count
        {
           pwd = "\(pwd)*"
        }
        nameField.text = userData.name
        emailField.text = userData.email
        passwordField.text = pwd
        deptField.text = userData.department
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editName"
        {
            let namesegue = segue.destination as! NameViewController
            namesegue.name = userData.name
            namesegue.label = "Name"
        }
        
        if segue.identifier == "editEmail"
        {
            let namesegue = segue.destination as! NameViewController
            namesegue.name = userData.email
            namesegue.label = "Email"
        }
        if segue.identifier == "editPassword"
        {
            let namesegue = segue.destination as! NameViewController
            namesegue.name = userData.password
            namesegue.label = "Password"
        }
        if segue.identifier == "editDept"
        {
            let namesegue = segue.destination as! NameViewController
            namesegue.name = userData.department
            namesegue.label = "Department"
        }
    }
   
    @IBAction func editPassword(_ sender: Any) {
     performSegue(withIdentifier: "editPassword", sender: self)
    }
    @IBAction func editEmail(_ sender: Any) {
     performSegue(withIdentifier: "editEmail", sender: self)
    }
    @IBAction func editName(_ sender: Any) {
  
        performSegue(withIdentifier: "editName", sender: self)
    
    }
    
    @IBAction func editDept(_ sender: Any) {
    performSegue(withIdentifier: "editDept", sender: self)
    }
    
    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
      
        if segue.source is NameViewController
        {
            let SVC = segue.source as! NameViewController
        
            if segue.identifier == "UpdateName"
            {    nameField.text = SVC.name
                userData.name = SVC.name
            }
            else if segue.identifier == "UpdateEmail"
            {
                emailField.text = SVC.name
                 userData.email = SVC.name
            }
            else if segue.identifier == "UpdatePassword"
            {
                passwordField.text = SVC.name
                userData.password = SVC.name
                buttonShow.setTitle("Hide", for: UIControl.State.normal)
                pwd = ""
                count = userData.password.count
                for i in 1...count
                {
                    pwd = "\(pwd)*"
                }
            }
            else if segue.identifier == "UpdateDept"
            {
                deptField.text = SVC.name
                userData.department = SVC.name
            }

            
        }
        else
        {
            print("NOT ME")
        }
    }
    
    
    
    @IBAction func showhide(_ sender: Any) {
        
        if buttonShow.currentTitle == "Show"
        {
            passwordField.text = userData.password
            buttonShow.setTitle("Hide", for: UIControl.State.normal)
        }
            
        else if buttonShow.currentTitle == "Hide"
        {
            passwordField.text = pwd
            buttonShow.setTitle("Show", for: UIControl.State.normal)
        }
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
