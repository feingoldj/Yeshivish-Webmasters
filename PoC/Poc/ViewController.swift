 //
//  ViewController.swift
//  PoC
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
        
        //adds to firebase database
        
        let refOne = ref.child("Users")
        
        let refTwo = refOne.child(usernameField.text!)
        refTwo.setValue(u.toAnyObject())
        
        let refThree = refTwo.child("potatos")
        refThree.setValue("potato: 2")
        
        //print database change to the consol
        /*print("------------")
        ref.observe(.value, with: { snapshot in
            print(snapshot.value as Any)
        })
        print("------------")*/
        
        //add inputted user to userHolder
        userHolder.append(u)
        
        //print contents of userHolder
        /*for items in userHolder {
            print(items.toString())
        }*/
        
        
        //clear text fields
        usernameField.text = ""
        passwordField.text = ""
        
        //print number of users in userHolder
        //print(userHolder.count)
        //print("--------------")
        
        //transition to SecondViewController
        //performSegue(withIdentifier: "Segue1", sender: self)
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
