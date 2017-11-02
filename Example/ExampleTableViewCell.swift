//
//  ExampleTableViewCell.swift
//  Example
//
//  Created by Juan Alberto Uribe on 5/18/16.
//  Copyright © 2016 Kogi Mobile. All rights reserved.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {

    @IBOutlet weak var exampleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
