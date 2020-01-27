//
//  MyTableViewCell.swift
//  NewApp
//
//  Created by apple on 1/27/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var Nameshow: UILabel!
    @IBOutlet weak var detailsshow1: UILabel!
    @IBOutlet weak var imageshow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
