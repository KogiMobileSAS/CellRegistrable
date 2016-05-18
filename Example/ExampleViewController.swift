//
//  ExampleViewController.swift
//  Example
//
//  Created by Juan Alberto Uribe on 5/17/16.
//  Copyright © 2016 Kogi Mobile. All rights reserved.
//

import UIKit
import CellRegistrable

class ExampleViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.registerCell(ExampleTableViewCell)
        tableView.dataSource = self
    }
}

extension ExampleViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(
            ExampleTableViewCell.reuseIdentifier,
            forIndexPath: indexPath)
        
        if let exampleCell = cell as? ExampleTableViewCell {
            exampleCell.exampleLabel.text = "Cell \(indexPath.row)"
        }
        
        return cell
    }
}
