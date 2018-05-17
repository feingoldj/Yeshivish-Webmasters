//
//  ViewController.swift
//  Database_Test
//
//  Created by Jared Feingold on 5/16/18.
//  Copyright © 2018 Jared Feingold. All rights reserved.
//

import UIKit
import SQLite3
class ViewController: UIViewController {
    var db: OpaquePointer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // create SQlite file
        let fileUrl = try!
            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("database.sqlite")
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK  {
            print("Error opening database")
            return
        }
        
        
        let createTableQuery = "CREATE TABLE IF NOT EXISTS Heroes (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, number INTEGER)"
        if sqlite3_exec(db, createTableQuery, nil, nil, nil) != SQLITE_OK {
            print("Error creating table")
            return
        }
        print("Everything is fine")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

