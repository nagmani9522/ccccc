//
//  secondTableViewCell.swift
//  CustomTableViewWithDataPassing
//
//  Created by mac on 31/10/21.
//

import UIKit

class secondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
