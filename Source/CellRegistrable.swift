//
//  CellRegistrable.swift
//  CellRegistrable
//
//  Created by Juan Alberto Uribe on 5/17/16.
//  Copyright © 2016 Kogi Mobile. All rights reserved.
//

import UIKit

public protocol CellRegistrable {
    func registerCell(cell: CellConfigurable.Type)
}

extension UITableView: CellRegistrable {
    public func registerCell(cell: CellConfigurable.Type) {
        registerNib(cell.nib, forCellReuseIdentifier: cell.reuseIdentifier)
    }
}

extension UICollectionView: CellRegistrable {
    public func registerCell(cell: CellConfigurable.Type) {
        registerNib(cell.nib, forCellWithReuseIdentifier: cell.reuseIdentifier)
    }
}
