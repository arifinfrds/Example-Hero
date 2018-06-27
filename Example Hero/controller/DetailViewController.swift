//
//  DetailViewController.swift
//  Example Hero
//
//  Created by Arifin Firdaus on 6/27/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit
import Hero

class DetailViewController: UIViewController {
    
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detail"
        
        self.hero.isEnabled = true
        headerImageView.hero.id = "imageView"
        headerImageView.hero.modifiers = [.translate(y: 100)]
        
        
        titlelabel.hero.id = "titleLabel"
        titlelabel.hero.modifiers = [.translate(y:100)]
        
        self.view.hero.id = "background"
        self.view.hero.modifiers = [.translate(y:100)]
    }
    
    
}
