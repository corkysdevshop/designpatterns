//
//  SecondViewController.swift
//  Swift Delegation
//
//  Created by Stephen Printup on 6/21/16.
//  Copyright © 2016 Stephen Printup. All rights reserved.
//

import UIKit

/*
 1a. define the protocol in the file you're sending the message from
 */
protocol customDelegate {
    func superImportantMessage(message: String)
}

/*
 1b. add a delegate property in the same file 
 */
var delegate:customDelegate?


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*
     3. Calling Delegate Methods
     */
    @IBAction func buttonPressed(sender: AnyObject) {
        delegate?.superImportantMessage("this is my message!")
    }
}

