//
//  CellRegistrable.swift
//  CellRegistrable
//
//  Created by Juan Alberto Uribe on 5/17/16.
//  Copyright © 2016 Kogi Mobile. All rights reserved.
//

import UIKit

/**
 The `CellRegistrable` protocol is adopted objects that want to provide an easy
 way to register the cells that conform to the `CellConfigurable` protocol.
 
 This framework adds conformance to the protocol to `UITableView` and 
 `UICollectionView`
 */
public protocol CellRegistrable {
    func registerCell(_ cell: CellConfigurable.Type)
}

extension UITableView: CellRegistrable {
    public func registerCell(_ cell: CellConfigurable.Type) {
        register(cell.nib, forCellReuseIdentifier: cell.reuseIdentifier)
    }
}

extension UICollectionView: CellRegistrable {
    public func registerCell(_ cell: CellConfigurable.Type) {
        register(cell.nib, forCellWithReuseIdentifier: cell.reuseIdentifier)
    }
}
