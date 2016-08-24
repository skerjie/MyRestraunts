//
//  MyRestrauntsTableViewCell.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 24.08.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit

class MyRestrauntsTableViewCell: UITableViewCell {

  @IBOutlet weak var thumbnailImageView: UIImageView!
  
  @IBOutlet weak var nameLabel: UILabel!
  
  @IBOutlet weak var typeLabel: UILabel!
  
  @IBOutlet weak var locationLabel: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
