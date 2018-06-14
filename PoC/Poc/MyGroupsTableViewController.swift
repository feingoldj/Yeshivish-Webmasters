//
//  MyGroupsTableViewController.swift
//  PoC
//
//  Created by Jared Feingold on 6/5/18.
//  Copyright © 2018 Jared Feingold. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class MyGroupsTableViewController: UITableViewController {

    var user: User!
    var userHolder: [User] = []
    let ref = Database.database().reference(withPath: "Users")
    
    
    //JARED: not sure what this does...
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //JARED: not sure what this does...
        tableView.allowsMultipleSelectionDuringEditing = false
        
        /*ref.queryOrdered(byChild: "Users").observe(.value, with: { snapshot in
            var newUserHolder: [User] = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                    let thisUser = User(snapshot: snapshot) {
                    newUserHolder.append(thisUser)
                }
            }
            self.userHolder = newUserHolder
            self.tableView.reloadData()
        })*/
    
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "TableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell else {
            fatalError("the dequeue cell is not an instance of TableViewCell")
        }
        
        //"as" is an attempt to downcast the returned object from thge UITableViewCell to TableViewCell
        //this returns an optional
        //guard let unwraps the optional

        /*let meal = meals[indexPath.row]
        
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating
        */
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "Seg3", sender: self)
    }
    
    
}
