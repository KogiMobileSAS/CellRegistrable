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

    init() {
        super.init(nibName: String(describing: ExampleViewController.self), bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.registerCell(ExampleTableViewCell.self)
        tableView.dataSource = self
    }
}

extension ExampleViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: ExampleTableViewCell.reuseIdentifier,
            for: indexPath)
        
        if let exampleCell = cell as? ExampleTableViewCell {
            exampleCell.exampleLabel.text = "Cell \(indexPath.row)"
        }
        
        return cell
    }
}
