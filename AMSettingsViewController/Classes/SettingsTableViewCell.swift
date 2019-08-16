//
//  SettingsTableViewCell.swift
//  AMSettingsViewController
//
//  Created by Mac on 15/08/19.
//

import UIKit

public class SettingsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTitle: UILabel!
    
    public var title : String = "" {
        didSet {
            lblTitle.text = title
        }
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
