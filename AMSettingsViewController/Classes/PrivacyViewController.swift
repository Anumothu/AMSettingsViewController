//
//  PrivacyViewController.swift
//  AMSettingsViewController
//
//  Created by Mac on 18/08/19.
//

import UIKit

class PrivacyViewController: UIViewController {
    
    
    @IBOutlet weak var lblPrivacy: UILabel!
    
    
    var policyString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Privacy Policy"
        lblPrivacy.text = policyString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
