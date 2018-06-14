//
//  TableViewCell.swift
//  PoC
//
//  Created by Jared Feingold on 6/7/18.
//  Copyright © 2018 Jared Feingold. All rights reserved.
//

import UIKit
import Firebase


class TableViewCell: UITableViewCell {

    @IBOutlet weak var groupsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
