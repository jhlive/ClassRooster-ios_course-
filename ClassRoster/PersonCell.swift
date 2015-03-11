//
//  PersonCell.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 3/10/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
