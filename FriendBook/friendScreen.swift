//
//  friendScreen.swift
//  FriendBook
//
//  Created by Aparna Krishnan on 12/25/15.
//  Copyright © 2015 Aparna. All rights reserved.
//

import UIKit

class friendScreen: UIViewController {
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var dob: UILabel!
    
    var pname = "A"
    var pdate = "10th April"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    self.name.text = pname
    self.dob.text = pdate

    }
}
