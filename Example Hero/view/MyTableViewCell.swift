//
//  MyTableViewCell.swift
//  Example Hero
//
//  Created by Arifin Firdaus on 6/27/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellImageView.hero.id = "imageView"
        titleLabel.hero.id = "titleLabel"
        self.hero.id = "background"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
