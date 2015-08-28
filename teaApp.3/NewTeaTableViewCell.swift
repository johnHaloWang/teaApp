//
//  NewTeaTableViewCell.swift
//  teaApp.3
//
//  Created by john wang on 8/27/15.
//  Copyright © 2015 john wang. All rights reserved.
//

import UIKit

class NewTeaTableViewCell: UITableViewCell {
    @IBOutlet weak var newTeaIV: UIImageView!
    @IBOutlet weak var newTeaAmount: UILabel!
    @IBOutlet weak var newTeaNotes: UILabel!
    @IBOutlet weak var newTeaName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
