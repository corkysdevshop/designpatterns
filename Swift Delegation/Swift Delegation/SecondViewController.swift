//
//  SecondViewController.swift
//  Swift Delegation
//
//  Created by Stephen Printup on 6/21/16.
//  Copyright © 2016 Stephen Printup. All rights reserved.
//

import UIKit

/*
 1. define the protocol in the file you're sending the message from
 */
protocol customDelegate {
    func superImportantMessage(message: String)
}

/*
 2. add a delegate property in the same file as #1
 */
var delegate:customDelegate?


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*
     4. Calling Delegate Methods
     */
    @IBAction func buttonPressed(sender: AnyObject) {
        delegate?.superImportantMessage("this is my message!")
    }
}

