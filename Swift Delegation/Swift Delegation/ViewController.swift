//
//  MasterViewController.swift
//  Swift Delegation
//
//  Created by Stephen Printup on 6/21/16.
//  Copyright © 2016 Stephen Printup. All rights reserved.
//

import UIKit

/*
 3a. Adopt (conform) to the Delegate Protocol (customDelegate)
 */
class ViewController: UIViewController, customDelegate {

    @IBOutlet weak var labelMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*
     3b. Implement the Delegate Protocol
     */
    func superImportantMessage(message: String) {
        print(message)
        self.labelMain.text = message
    }
    
    /*
     3c. Set the delegate
     */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        delegate = self
    }
}