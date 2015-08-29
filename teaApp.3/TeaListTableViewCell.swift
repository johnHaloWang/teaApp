//
//  TeaListTableViewCell.swift
//  teaApp.3
//
//  Created by john wang on 8/29/15.
//  Copyright © 2015 john wang. All rights reserved.
//

import UIKit

class TeaListTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewField: UIImageView!
    @IBOutlet weak var teaNameLabelField: UILabel!
    @IBOutlet weak var teaLocLabelField: UILabel!
    @IBOutlet weak var teaAmountLabelField: UILabel!
    @IBOutlet weak var teaNumberOfNotesLabelField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
