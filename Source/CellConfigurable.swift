//
//  CellConfigurable.swift
//  CellRegistrable
//
//  Created by Juan Alberto Uribe on 5/17/16.
//  Copyright © 2016 Kogi Mobile. All rights reserved.
//

import UIKit

public protocol CellConfigurable {
    static var reuseIdentifier: String { get }
    static var nib: UINib { get }
}

extension CellConfigurable {
    public static var reuseIdentifier: String {
        return String(self)
    }
    
    public static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}

extension UITableViewCell: CellConfigurable {}
extension UICollectionViewCell: CellConfigurable {}
