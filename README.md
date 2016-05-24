# CellRegistrable
[![Version](https://img.shields.io/cocoapods/v/CellRegistrable.svg?style=flat)](http://cocoapods.org/pods/CellRegistrable)
[![License](https://img.shields.io/cocoapods/l/CellRegistrable.svg?style=flat)](http://cocoapods.org/pods/CellRegistrable)
[![Platform](https://img.shields.io/cocoapods/p/CellRegistrable.svg?style=flat)](http://cocoapods.org/pods/CellRegistrable)

`CellRegistrable` is a library that adds a simple way to register your cells to `UITableView` and `UICollectionView`.

## Installation

```ruby
pod 'CellRegistrable', '~> 1.0'
```

## Usage

```swift
import CellRegistrable

override func viewDidLoad() {
    super.viewDidLoad()

    tableView.registerCell(ExampleTableViewCell)
}

func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(
            ExampleTableViewCell.reuseIdentifier,
            forIndexPath: indexPath)
        
        // Configure your cell
        
        return cell
    }
```

**NOTE:** This library has a default implementation that uses the name of the cell class for the `reuseIdentifier` and assumes the nib name is the same as the `reuseIdentifier`, in case your nib name is different you can either return the name of your nib in the `reuseIdentifier` variable or return your nib implementing the `nib` variable in your cell.

## License

`CellRegistrable` is available under the MIT license. See the LICENSE file for more info.
