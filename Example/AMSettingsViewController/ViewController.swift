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
        
        
        if let settingsController = viewController.visibleViewController as? SettingsViewController {
            
            let walth1 = Walkthrough(title: "Match List", disc: "Here all the matches score for the recent week will be there. It included completed, live and upcoming matches", image: UIImage(named: "page1"), color: UIColor.green)
            
            let walth2 = Walkthrough(title: "Match Detail", disc: "Here you can view the little detail score of a single match. You can scroll to view other matches too. No need to go out and come back ", image: UIImage(named: "page2"), color: UIColor.red)

            settingsController.walkthroughList = [walth1, walth2]
            
            settingsController.privacyString = "sdfdasfas dsafdsa fdsa fdsafdsa fdsa \n\n dsfds fdsa fdsafdas  \n\n dsfds afdsaf dsafdsa fdasf dsafdsa fdsaf dsfds fdsaf dsafdsa fdasf dsafdas fdsafdsafdas adsf \n\n sdf sfdsafdsa fdsafsa f \n ds fsfds afdasf das"
            
            
            settingsController.useInstruction = Instruction(comment: "This is the step how to use", steps: ["1. Please click the build","2. Please follow the step 2"])
            
            self.present(viewController, animated: false, completion: nil)
            
//            settingsController.loadWalkthrough()
            
//            settingsController.walkthroughList = [Walkthrough()]
        }
        // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
        
        
        
        
//
//        let bundle = Bundle(for: SettingsViewController.classForCoder())
//        let controller = SettingsViewController()
//        self.present(controller, animated: true, completion: nil)
    }
    
}

