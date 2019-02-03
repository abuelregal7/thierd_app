//
//  arabicfilmsTVC.swift
//  thierd_app
//
//  Created by Ahmed abu elregal on 10/27/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class arabicfilmsTVC: UITableViewCell {

    @IBOutlet weak var imagee: UIImageView!
    @IBOutlet weak var link: UIButton!
    
    @IBAction func link(_ sender: Any) {
        link.setTitle("link", for: .normal)
    }
    @IBOutlet weak var namesoffilms: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
