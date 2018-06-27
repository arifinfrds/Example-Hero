//
//  SmallCellTableViewController.swift
//  Example Hero
//
//  Created by Arifin Firdaus on 6/27/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class SmallCellTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
