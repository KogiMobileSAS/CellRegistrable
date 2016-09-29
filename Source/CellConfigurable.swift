//
//  CellConfigurable.swift
//  CellRegistrable
//
//  Created by Juan Alberto Uribe on 5/17/16.
//  Copyright © 2016 Kogi Mobile. All rights reserved.
//

import UIKit

/**
 The `CellConfigurable` protocol is adopted by cells that want to provide an easy
 way to obtain the `UINib` and a `reuseIdentifier`.
 
 This framework has a default implementation that uses the name of the class
 for the `reuseIdentifier` and assumes the nib name is the same as the
 `reuseIdentifier`, in case your nib name is different you can either return
 the name of your nib in the `reuseIdentifier` variable or return your nib
 implementing the `nib` variable.
 
 This framework also adds conformance to the protocol to `UITableViewCell` and
 `UICollectionViewCell`
 */
public protocol CellConfigurable {
    static var reuseIdentifier: String { get }
    static var nib: UINib { get }
}

extension CellConfigurable {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    public static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}

extension UITableViewCell: CellConfigurable {}
extension UICollectionViewCell: CellConfigurable {}
