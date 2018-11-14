//
//  ViewController.swift
//  iOS-InClass02
//
//  Created by Alay Chaniyara on 10/26/18.
//  Copyright © 2018 Alay Chaniyara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var name = ""
    var email = ""
    var password = ""
    var department = ""
    @IBOutlet weak var buttonSubmit: UIBarButtonItem!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var deptField: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let  user:User = User(name: name,email: email,password: password,department: department)
        
        if segue.identifier == "submitData"{
            
            let profile = segue.destination as! ProfileViewController
          
            profile.userData = user
        }
    }
    @IBAction func getData(_ sender: Any) {
        
        
        name = nameField.text!
        email = emailField.text!
        password = passwordField.text!
     if name.isEmpty || email.isEmpty || password.isEmpty
     {
        let alert  =  UIAlertController(title: "Error", message: "Input cannot be empty", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action:UIAlertAction) in
            
        }))
     self.present(alert, animated: true, completion: nil)
     }
        else
     {
        if deptField.selectedSegmentIndex == 0
       {
         department = "CS"
        }
        else if deptField.selectedSegmentIndex == 1
       {
        department = "SIS"
        
        }
        else
       {
        department = "BIO"
        
        }
       
        performSegue(withIdentifier: "submitData", sender: self)
        }
    }
    
}


