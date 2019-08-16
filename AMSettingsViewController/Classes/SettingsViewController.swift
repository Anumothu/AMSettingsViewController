//
//  SettingsViewController.swift
//  AMSettingsViewController
//
//  Created by Mac on 11/08/19.
//

import UIKit
import MessageUI
import BWWalkthrough

public struct Walkthrough {
    var title : String?
    var discription : String?
    var image : UIImage?
}


public class SettingsViewController: UIViewController {
    @IBOutlet weak var tblSettings: UITableView!
 
    @IBOutlet weak var constraintTitleHeight: NSLayoutConstraint!
    
    public var walkthroughList : [Walkthrough] = []
    
    public var emails : [String] = []
    public var subject : String?
    public var body : String?
    public var appID : String?
    
    let list = ["How to Use","Walk through","Rate us","Contact Us / Feedback","Privacy Policy"]
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Settings"
        self.navigationController?.isNavigationBarHidden = false
      
//        constraintTitleHeight.adujustNotchHeight()
//        
//        let bundle = Bundle(for: SettingsTableViewCell.self)
//         let nib = UINib(nibName: "SettingsTableViewCell", bundle: bundle)
//          self.tblSettings.register(nib, forCellReuseIdentifier: "SettingsCell")
//        
        
        
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
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(emails)
        if let sub = subject {
            mailComposerVC.setSubject(sub)
        }
        
        if let emailBody = body {
            mailComposerVC.setMessageBody(emailBody, isHTML: false)
        }
        
        return mailComposerVC
    }
    
    
    @IBAction func closeAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    

}

extension SettingsViewController : UITableViewDelegate, UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SettingsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell") as! SettingsTableViewCell
        
        cell.title = list[indexPath.row]
        return cell
    }
    
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            self.performSegue(withIdentifier: "HowtouseSegue", sender: nil)
        }else if indexPath.row == 1 {
            
            self.navigationController?.isNavigationBarHidden = false
            
            let bundle = Bundle(for: SettingsViewController.self)
            let stb = UIStoryboard(name: "Walkthorough", bundle: bundle)
            let walkthrough = stb.instantiateViewController(withIdentifier: "Master") as! BWWalkthroughViewController
            let page_one = stb.instantiateViewController(withIdentifier: "page1") as UIViewController
            let page_two = stb.instantiateViewController(withIdentifier: "page2") as UIViewController
            let page_three = stb.instantiateViewController(withIdentifier: "page3") as UIViewController
            let page_four = stb.instantiateViewController(withIdentifier: "page4") as UIViewController
            let page_five = stb.instantiateViewController(withIdentifier: "page5") as UIViewController
            
            
            walkthrough.delegate = self
            walkthrough.add(viewController:page_one)
            walkthrough.add(viewController:page_two)
            walkthrough.add(viewController:page_three)
            walkthrough.add(viewController:page_four)
            walkthrough.add(viewController:page_five)
            self.show(walkthrough, sender: nil)
            
            
            
            return
            
        }else if indexPath.row == 2 {
//            if let appid = appID {
//                UAAppReviewManager.setAppID(appid)
//                UAAppReviewManager.rateApp()
//            }
        }else if indexPath.row == 3 {
            let mailComposeViewController = configuredMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                self.showSendMailErrorAlert()
            }
            
        }else if indexPath.row == 4 {
            self.performSegue(withIdentifier: "PrivacyPolicySegue", sender:  nil)
        }
    }
    
    
    func showSendMailErrorAlert() {
        
        let alertController = UIAlertController(title: "Could Not Send Email", message: "There is no email account found or there is an error to connect Email app. Please check your email app", preferredStyle: .alert)
        
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            UIAlertAction in
            
        }
        
        // Add the actions
        alertController.addAction(okAction)
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}



extension SettingsViewController : MFMailComposeViewControllerDelegate {
    private func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
        if result == MFMailComposeResult.sent {
            
            let alertController = UIAlertController(title: "Contact Us", message: "Thank you for contact us. ", preferredStyle: .alert)
            
            // Create the actions
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                UIAlertAction in
                
            }
            
            // Add the actions
            alertController.addAction(okAction)
            
            // Present the controller
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

extension NSLayoutConstraint {
    func adujustNotchHeight() {
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
            case 1136:
                self.constant = 64
                
            case 1334:
                self.constant = 64
                
            case 1920, 2208:
                self.constant = 80
                
            case 2436:
                self.constant = 100
                
            case 2688:
                  self.constant = 100
                
            case 1792:
                 self.constant = 100
                
            default:
                 self.constant = 100
            }
        }
    }
}


extension SettingsViewController : BWWalkthroughViewControllerDelegate {
    public func walkthroughCloseButtonPressed() {
        self.navigationController?.popViewController(animated: true)
    }
}
