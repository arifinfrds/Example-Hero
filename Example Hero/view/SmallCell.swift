//
//  SmallCell.swift
//  Example Hero
//
//  Created by Arifin Firdaus on 6/27/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class SmallCell: UITableViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.hero.id = "imageView"
        titleLabel.hero.id = "titleLabel"
        subtitleLabel.hero.id = "subtitleLabel"
        self.hero.id = "background"
        
        titleLabel.text = "Mountain"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
