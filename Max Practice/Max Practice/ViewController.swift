//
//  ViewController.swift
//  Max Practice
//
//  Created by Jared Feingold on 5/27/18.
//  Copyright © 2018 Jared Feingold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var oneField: UITextField!
    @IBOutlet weak var twoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button(_ sender: Any) {
    
        print(oneField.text!)
        print(twoField.text!)
        
        
        
    
    }
    
    
    
    

}




