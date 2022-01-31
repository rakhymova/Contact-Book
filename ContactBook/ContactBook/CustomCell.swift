//
//  CustomCell.swift
//  ContactBook
//
//  Created by Nurdana Rakhymova on 1/20/22.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var contactNumber: UILabel!
    @IBOutlet weak var contactImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
