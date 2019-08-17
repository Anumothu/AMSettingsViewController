//
//  HowUseViewController.swift
//  AMSettingsViewController
//
//  Created by Mac on 18/08/19.
//

import UIKit

class HowUseViewController: UIViewController {
    
    @IBOutlet weak var lblComments: UILabel!
    @IBOutlet weak var lblInst1: UILabel!
    @IBOutlet weak var lblInst2: UILabel!
    @IBOutlet weak var lblInst3: UILabel!
    @IBOutlet weak var lblInst4: UILabel!
    @IBOutlet weak var lblInst5: UILabel!
    
    
    var comment : String?
    var steps : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "How To Use"
        lblComments.text = comment
        for (idx,step) in steps.enumerated() {
            if let label = self.view.viewWithTag(idx + 11) as? UILabel {
                label.text = step
            }
        }
        // Do any additional setup after loading the view.
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
