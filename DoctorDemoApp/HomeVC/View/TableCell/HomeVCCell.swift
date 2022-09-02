//
//  HomeVCCell.swift
//  DoctorDemoApp
//
//  Created by Josh on 02/09/22.
//

import UIKit

class HomeVCCell: UITableViewCell {
    
    @IBOutlet weak var Name: UILabel!
    
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
