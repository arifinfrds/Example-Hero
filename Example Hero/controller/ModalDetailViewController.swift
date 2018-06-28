//
//  ModalDetailViewController.swift
//  Example Hero
//
//  Created by Arifin Firdaus on 6/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class ModalDetailViewController: UIViewController {

    
    // MARK: - Properties
    
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        closeButton.setImage(#imageLiteral(resourceName: "icons8-multiply-50").maskWithColor(color: .white), for: .normal)
        
        self.title = "Detail"
        
        self.hero.isEnabled = true
        headerImageView.hero.id = "imageView"
        headerImageView.hero.modifiers = [.translate(y: 100)]
        
        titlelabel.hero.id = "titleLabel"
        titlelabel.hero.modifiers = [.translate(y:100)]
        
        self.view.hero.id = "background"
        self.view.hero.modifiers = [.translate(y:100)]
    }
    
    
    // MARK: - Action
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: - UI Setup
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
}
