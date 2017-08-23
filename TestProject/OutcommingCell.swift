//
//  OutcommingCell.swift
//  TestProject
//
//  Created by Azis Senoaji Prasetyotomo on 8/23/17.
//  Copyright © 2017 Azis Senoaji Prasetyotomo. All rights reserved.
//

import UIKit

class OutcommingCell: UITableViewCell {

    @IBOutlet weak var chatLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCell(chat: String) {
        chatLabel.text = chat
    }

}
