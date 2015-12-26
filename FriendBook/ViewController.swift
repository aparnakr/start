//
//  ViewController.swift
//  FriendBook
//
//  Created by Aparna Krishnan on 12/25/15.
//  Copyright © 2015 Aparna. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    let Friends = ["A","B","C","D"]
    let bdays = ["1st May","2nd April","9th January","8th December"]
    var selectedp = "A"
    var selectdedd = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }


    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.Friends.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      
        let cell = UITableViewCell()
        if indexPath.row % 2 == 0{
        cell.backgroundColor = UIColor.blueColor()
        }
        else{
            cell.backgroundColor = UIColor.blackColor()
            
        }
        cell.textLabel!.text = Friends[indexPath.row]
        cell.textLabel!.textColor = UIColor.whiteColor()
        
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedp = Friends[indexPath.row]
        self.selectdedd = bdays[indexPath.row]
        
        performSegueWithIdentifier("tableToFriends", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let screen = segue.destinationViewController as! friendScreen
        screen.pname = self.selectedp
        screen.pdate = self.selectdedd
        
    }

}

