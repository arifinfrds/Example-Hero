//
//  SmallCellTableViewController.swift
//  Example Hero
//
//  Created by Arifin Firdaus on 6/27/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class SmallCellTableViewController: UITableViewController {
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateCells()
    }
    
    
    // MARK: - UI Setup
    
    // custom animation (not Hero animation)
    func animateCells() {
        
        tableView.reloadData()
        // change cell position to the bottom of the screen
        for cell in tableView.visibleCells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableView.bounds.size.height)
        }
        // animate to proper position
        var delayCounter = 0
        for cell in tableView.visibleCells {
            UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
        }
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SmallCell", for: indexPath) as! SmallCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
}
