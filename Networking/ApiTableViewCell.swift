//
//  ApiTableViewCell.swift
//  Networking
//
//  Created by Сергей on 19.05.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit

class ApiTableViewCell: UITableViewCell {
    @IBOutlet var ItemId:String!
    @IBOutlet var ItemName:String!
    @IBOutlet var ItemDescription:String!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
