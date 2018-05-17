//
//  RawCode.swift
//  Database_Test
//
//  Created by Jared Feingold on 5/17/18.
//  Copyright © 2018 Jared Feingold. All rights reserved.
//

import Foundation

//Should create an instance of a very general user who goes to meetings
class User {
    var countUsers = 0
    var ID = 0
    //array of groups that the user is a part of
    var groups = [String]()
    var username = ""
    var password = ""
    //gives the user a username and password and member groups
    init(username: String, password: String, groups: [String]) {
        self.username = username
        self.password = password
        self.groups = groups
        //Gives the user an ID number that will increment with every user created
        self.ID = countUsers
        countUsers = countUsers + 1
    }
    
}





