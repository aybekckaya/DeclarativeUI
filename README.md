# DeclarativeUI

<p align = "left"> Declarative approach to create views like SwiftUI. </p>

## Installation

### [Swift Package Manager for Apple platforms](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

Select Xcode menu `File > Swift Packages > Add Package Dependency` and enter repository URL with GUI.  
```
Repository: https://github.com/aybekckaya/DeclarativeUI.git
```

### [Swift Package Manager](https://swift.org/package-manager/)

Add the following to the dependencies of your `Package.swift`:
```swift
.package(url: "https://github.com/aybekckaya/DeclarativeUI.git", from: "1.0.0")
```
## Usage

```swift
    let view = UIView.view()
            .roundCorners(by: 8)
            .shadow(color: UIColor.black, opacity: 1.0, offset: CGSize.zero, radius: 10)
        
     let tableView = UITableView.tableView()
            .removeEmptyCellSeperators()
            .seperatorStyle(.none)
            .roundCorners(by: 8)
            .shadow(color: UIColor.black, opacity: 1.0, offset: CGSize.zero, radius: 10)
            .asTableView()
            
            // etc...
```
