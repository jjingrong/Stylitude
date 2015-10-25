//
//  ViewController.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    
    var user = CustomerModel.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func logInButtonPressed(sender: AnyObject) {
//        shouldPerformSegueWithIdentifier("goToCategoryView", sender: self)

    }
}

