//
//  User Class.swift
//  Saba's Pictures Practice
//
//  Created by Jared Feingold on 5/27/18.
//  Copyright © 2018 Jared Feingold. All rights reserved.
//

import Foundation

class User {
    var countUsers = 0
    var ID = 0
    //array of groups that the user is a part of
    var groups = [String]()
    var username = ""   
    var password = ""
    //gives the user a username and password and member groups
    init(_ username: String,_ password: String,_ groups: [String]) {
        self.username = username
        self.password = password
        self.groups = groups
        //Gives the user an ID number that will increment with every user created
        self.ID = countUsers
        countUsers = countUsers + 1
    }
    func toString() {
        var dummy = ""
        for item in self.groups {
            dummy += item + " "
        }
        
        print("User: \(self.username)  Password: \(self.password)  Groups: \(dummy)")
        
       
    }
    func toAnyObject() -> Any {
        return [
            "username" : self.username,
            "password" : self.password,
            "groups" : self.groups
        ]
    }
    
}

