//
//  SettingsTableViewCell.swift
//  AMSettingsViewController
//
//  Created by Mac on 11/08/19.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var lbltitle: UILabel!
    
    
    var title : String = "" {
        didSet {
            lbltitle.text = title
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
