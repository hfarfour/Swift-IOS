//
//  questionTableViewCell.swift
//  Quiz
//
//  Created by Hossam Farfour on 13/10/2022.
//

import UIKit

class questionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
