//
//  ViewController.swift
//  RealmTest
//
//  Created by Peter Ivanics on 26/09/2017.
//  Copyright © 2017 Peter Ivanics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonTapped() {
        RemoteService.shared.testRequest()
    }
}
