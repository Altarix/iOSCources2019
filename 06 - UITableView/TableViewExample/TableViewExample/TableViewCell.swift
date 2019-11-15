//
//  TableViewCell.swift
//  TableViewExample
//
//  Created by Evgeniy Tatyanin on 14/11/2019.
//  Copyright © 2019 Evgeniy Tatyanin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with animal: Animal) {
        self.nameLabel.text = animal.name
    }
}
