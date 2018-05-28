 //
//  ViewController.swift
//  Saba's Pictures Practice
//
//  Created by Jared Feingold on 5/24/18.
//  Copyright © 2018 Jared Feingold. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
 
class ViewController: UIViewController {
    
    
    
    var ref: DatabaseReference!
    
    
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    //array to hold various users
    var userHolder = [User]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        ref = Database.database().reference()
        
        usernameField.delegate = self
        passwordField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enter(_ sender: Any) {
        //let username = usernameField.text!
        //let password = passwordField.text!
        //print(username)
        //print(password)
        
        let groupsArray: [String] = ["one","two"]
        let u = User(usernameField.text!, passwordField.text!, groupsArray)
        //u.toString()
        
        let uRef = ref.child(usernameField.text!)
        
        uRef.setValue(u.toAnyObject())
        
        //add inputted user to userHolder
        userHolder.append(u)
        
        //print contents of userHolder
        for items in userHolder {
            print(items.toString())
        }
        
        
        //clear text fields
        usernameField.text = ""
        passwordField.text = ""
        
        //print number of users in userHolder
        print(userHolder.count)
        print("--------------")
    }
    
}

 
 //to dismiss the keyboard when the user hits "return"
 extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //func textFieldDidBeginEditing(_ textField: UITextField) {
      //  textField.text = ""
    //}
    
    
    
    
 }