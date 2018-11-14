//
//  User.swift
//  iOS-InClass02
//
//  Created by Alay Chaniyara on 10/26/18.
//  Copyright © 2018 Alay Chaniyara. All rights reserved.
//

import Foundation
class User {
    
    
    var name = ""
    var email = ""
    var password = ""
    var department = ""
    init(name: String, email: String, password: String, department: String) {
        self.name = name
        self.email = email
        self.password = password
        self.department = department
    }
}
