//
//  mainViewTableViewController.swift
//  austinbacheloretteweekend
//
//  Created by Kate Owens  on 3/4/16.
//  Copyright © 2016 Me. All rights reserved.
//

import UIKit

class mainViewTableViewController: UITableViewController {
    
    
    var mainMenuItems = ["Dates", "Itinerary", "Photos", "Location", "About Austin", "About the Ladies"]

    override func viewDidLoad() {
        super.viewDidLoad()

           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mainMenuItems.count
 
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mainMenuItem", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = mainMenuItems[indexPath.row]
 print("working")
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 1 {
            performSegueWithIdentifier("aboutAustinSegue", sender: self)
        }
    }


    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return false
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
}
