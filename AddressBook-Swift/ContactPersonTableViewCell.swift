//
//  ContactPersonTableViewCell.swift
//  AddressBook-Swift
//
//  Created by lanou3g on 14-9-3.
//  Copyright (c) 2014年 winann.blog.51cto.com Winann. All rights reserved.
//

import UIKit

class ContactPersonTableViewCell: UITableViewCell {

    @IBOutlet var photoImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var phoneNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
