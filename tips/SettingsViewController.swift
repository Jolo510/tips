//
//  SettingsViewController.swift
//  tips
//
//  Created by Johnnie Lo on 4/9/15.
//  Copyright (c) 2015 Johnnie Lo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {


    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editDefaultTip(sender: UISegmentedControl) {
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setInteger(sender.selectedSegmentIndex, forKey: "default_tip")
        defaults.synchronize()
    }


    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        var defaultTip = defaults.integerForKey("default_tip")
        switch defaultTip {
        case 0...2:
                defaultTipControl.selectedSegmentIndex = defaultTip
        default:
                defaultTipControl.selectedSegmentIndex = 0
        }
    }

}
