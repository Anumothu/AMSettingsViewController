//
//  ViewController.swift
//  AMSettingsViewController
//
//  Created by anumothu on 08/11/2019.
//  Copyright (c) 2019 anumothu. All rights reserved.
//

import UIKit
import AMSettingsViewController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnAction(_ sender: Any) {
        
        let bundle = Bundle(for: SettingsViewController.self)
//        let controller = SettingsViewController(nibName: "SettingsViewController", bundle: bundle)
        
        
        let viewController:UINavigationController = UIStoryboard(name: "AMSettings", bundle: bundle).instantiateViewController(withIdentifier: "SettingsViewControllerID") as! UINavigationController
        // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
        
        self.present(viewController, animated: true, completion: nil)
        
        
//
//        let bundle = Bundle(for: SettingsViewController.classForCoder())
//        let controller = SettingsViewController()
//        self.present(controller, animated: true, completion: nil)
    }
    
}

