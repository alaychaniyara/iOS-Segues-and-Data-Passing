//
//  NameViewController.swift
//  iOS-InClass02
//
//  Created by Alay Chaniyara on 10/26/18.
//  Copyright © 2018 Alay Chaniyara. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var labelField: UILabel!
    
    @IBOutlet weak var deptField: UISegmentedControl!
    var name = ""
    var label = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        if label == "Department"
        {
            nameField.isHidden = true
    
            deptField.isHidden = false
            if name == "CS"
            {
            deptField.selectedSegmentIndex = 0
            }
            else if name == "SIS"
            {
                deptField.selectedSegmentIndex = 1
                
            }
            else
            {
                deptField.selectedSegmentIndex = 2
                
            }
        }
        else
        {
            nameField.isHidden = false
            deptField.isHidden = true
            
        }
            labelField.text = label
        
        nameField.text = name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func UpdateName(_ sender: Any) {
        name = nameField.text!
        if label == "Name"
        {
        performSegue(withIdentifier: "UpdateName", sender: self)
        }
        else
        if label == "Email"
        {
            performSegue(withIdentifier: "UpdateEmail", sender: self)
            
            
        }
        else if label == "Password"
        {
            performSegue(withIdentifier: "UpdatePassword", sender: self)
            
        }
        else if label == "Department"
        {
            if deptField.selectedSegmentIndex == 0
            {
                name = "CS"
            }
            else if deptField.selectedSegmentIndex == 1
            {
               name = "SIS"
                
                
            }
            else
            {
               name = "BIO"
                
            }
            
            performSegue(withIdentifier: "UpdateDept", sender: self)
            
        }
    }
}
