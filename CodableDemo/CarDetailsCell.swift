//
//  CarDetailsCell.swift
//  CodableDemo
//
//  Created by Gagandeep Kaur Swaitch on 1/8/19.
//  Copyright © 2019 Gagandeep Kaur Swaitch. All rights reserved.
//

import UIKit

class CarDetailsCell: UITableViewCell {
    @IBOutlet weak var saleIdLabel: UILabel!
    
    @IBOutlet weak var carModelLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
