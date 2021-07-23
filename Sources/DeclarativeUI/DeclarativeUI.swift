//
//  DeclarativeUI.swift
//  DeclarativeUI
//
//  Created by Aybek Can Kaya on 24.07.2021.
//

import Foundation
import UIKit

// MARK: - UIView {View Factory}
extension UIView {
    static func view() -> UIView {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}

// MARK: - UIStackView {View Factory}
extension UIStackView {
    static func stackView(alignment: UIStackView.Alignment, distribution: UIStackView.Distribution, spacing: CGFloat, axis: NSLayoutConstraint.Axis) -> UIStackView {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = alignment
        stack.distribution = distribution
        stack.spacing = spacing
        stack.axis = axis
        return stack
    }
}

// MARK: - UIImageView {View Factory}
extension UIImageView {
    static func imageView() -> UIImageView {
        let imView = UIImageView(frame: .zero)
        imView.translatesAutoresizingMaskIntoConstraints = false
        return imView
    }
}

// MARK: - UICollectionView {View Factory}
extension UICollectionView {
    static func collectionView(layout: UICollectionViewLayout) -> UICollectionView {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }
}

// MARK: - UILabel {View Factory}
extension UILabel {
    static func label() -> UILabel {
        let lbl = UILabel(frame: .zero)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
}

// MARK: - UITableView {View Factory}
extension UITableView {
    static func tableView() -> UITableView {
        let table = UITableView(frame: .zero, style: .plain)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }
}

// MARK: - UIButton {View Factory}
extension UIButton {
    static func button() -> UIButton {
        let btn = UIButton(frame: .zero)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
}

// MARK: - UIView
extension UIView {
    @discardableResult
    func roundCorners(by value: CGFloat, maskToBounds: Bool = false) -> UIView {
        self.layer.cornerRadius = value
        self.layer.masksToBounds = maskToBounds
        return self
    }
    
    @discardableResult
    func shadow(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) -> UIView {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.shouldRasterize = true
        self.layer.masksToBounds = false
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: UIColor) -> UIView {
        self.backgroundColor = color
        return self
    }
}

// MARK: - Casting
extension UIView {
    func asStackView() -> UIStackView {
        return self as! UIStackView
    }
    
    func asImageView() -> UIImageView {
        return self as! UIImageView
    }
    
    func asCollectionView() -> UICollectionView {
        return self as! UICollectionView
    }
    
    func asLabel() -> UILabel {
        return self as! UILabel
    }
    
    func asTableView() -> UITableView {
        return self as! UITableView
    }
    
    func asButton() -> UIButton {
        return self as! UIButton
    }
}

// MARK: - CALayer
extension CALayer {
    static func gradientLayer(colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint ) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.colors = colors.map { $0.cgColor }
        return gradient
    }
    
    @discardableResult
    func roundCorners(by value: CGFloat) -> CALayer {
        self.cornerRadius = value
        return self
    }
    
    @discardableResult
    func asGradientLayer() -> CAGradientLayer {
        return self as! CAGradientLayer
    }
}

// MARK: UILabel
extension UILabel {
    @discardableResult
    func font(_ font: UIFont) -> UILabel{
        self.font = font
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor) -> UILabel {
        self.textColor = color
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: NSTextAlignment) -> UILabel {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func numberOfLines(_ count: Int) -> UILabel {
        self.numberOfLines = count
        return self
    }
}

// MARK: - UIButton
extension UIButton {
    @discardableResult
    func contentEdgeInsets(_ edges: UIEdgeInsets) -> UIButton {
        self.contentEdgeInsets = edges
        return self
    }
    
    @discardableResult
    func titleFont(_ font: UIFont) -> UIButton {
        self.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor) -> UIButton {
        self.setTitleColor(color, for: .normal)
        return self
    }
}

// MARK: - UITableView
extension UITableView {
    @discardableResult
    func seperatorStyle(_ style: UITableViewCell.SeparatorStyle) -> UITableView {
        self.separatorStyle = style
        return self
    }
    
    @discardableResult
    func registerCell(_ cell: AnyClass, identifier: String) -> UITableView {
        self.register(cell, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func removeEmptyCellSeperators() -> UITableView {
        self.tableFooterView = UIView(frame: .zero)
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicators(_ show: Bool) -> UITableView {
        self.showsVerticalScrollIndicator = show
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicators(_ show: Bool) -> UITableView {
        self.showsHorizontalScrollIndicator = show
        return self
    }
}
