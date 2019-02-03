//
//  TableViewCell.swift
//  thierd_app
//
//  Created by Ahmed abu elregal on 10/27/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var nameslable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
