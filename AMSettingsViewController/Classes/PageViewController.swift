//
//  PageViewController.swift
//  AMSettingsViewController
//
//  Created by Mac on 17/08/19.
//

import UIKit

class PageViewController: UIViewController {

    @IBOutlet var bgView: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var imgContent: UIImageView!
    
    
    var bgColor : UIColor?
    var pageTitle : String?
    var pageDesc : String?
    var pageImg : UIImage?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
        self.navigationController?.isNavigationBarHidden = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func loadData() {
        bgView.backgroundColor = bgColor
        lblTitle.text = pageTitle
         lblDesc.text = pageDesc
        imgContent.image = pageImg
    }

}
