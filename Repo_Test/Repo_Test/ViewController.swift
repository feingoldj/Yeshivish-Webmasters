//
//  ViewController.swift
//  Repo_Test
//
//  Created by Ben Kaplan on 5/16/18.
//  Copyright © 2018 Ben Kaplan. All rights reserved.
//

import UIKit
import SQLite3

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

class ViewController: UIViewController {
    
    //Mark Properties
    @IBOutlet weak var m_name: UITextField!
    @IBOutlet weak var m_time: UIDatePicker!
    @IBOutlet weak var m_num: UITextField!
    @IBOutlet weak var sumbit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

