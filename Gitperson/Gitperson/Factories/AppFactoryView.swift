//
//  AppFactoryView.swift
//  Gitperson
//
//  Created by Bambang Tri Rahmat Doni on 07/01/24.
//

import UIKit

protocol AppFactoryView {
    associatedtype T: UIView
    
    static func create() -> T
}

extension AppFactoryView {
    static func create() -> UIView { .init() }
}

class FactoryView: AppFactoryView {
    static func create() -> UIView {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        return vw
    }
}

class FactoryImageTextButton: AppFactoryView {
    static func create(
        with font: UIFont = .preferredFont(forTextStyle: .headline),
        isImageOnRight: Bool = false
    ) -> UIButton {
        let bt = UIButton(type: .system)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        bt.titleLabel?.font = .preferredFont(forTextStyle: .headline).rounded()
        bt.titleLabel?.adjustsFontSizeToFitWidth = true
        bt.titleLabel?.textAlignment = .center
        bt.tintColor = .label
        bt.backgroundColor = .systemBlue
        bt.layer.cornerRadius = 15.0
        bt.semanticContentAttribute = isImageOnRight ? .forceRightToLeft : .unspecified
        bt.titleEdgeInsets.right = isImageOnRight ? 5.0 : -10.0
        bt.imageEdgeInsets.left = isImageOnRight ? 5.0 : -10.0
        
        return bt
    }
}

class FactoryTextButton: AppFactoryView {
    static func create(
        with font: UIFont = .preferredFont(forTextStyle: .headline)
    ) -> UIButton {
        let bt = UIButton(type: .system)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        bt.titleLabel?.font = font
        bt.titleLabel?.adjustsFontSizeToFitWidth = true
        bt.titleLabel?.textAlignment = .center
        bt.tintColor = .label
        bt.backgroundColor = .systemBlue
        bt.layer.cornerRadius = 15.0
        
        return bt
    }
}

class FactoryImageButton: AppFactoryView {
    static func create(
        with font: UIFont = .preferredFont(forTextStyle: .headline)
    ) -> UIButton {
        let bt = UIButton(type: .system)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        bt.tintColor = .label
        bt.backgroundColor = .systemBlue
        bt.setPreferredSymbolConfiguration(.init(font: font,scale: .default),forImageIn: .normal)
        
        return bt
    }
}

class FactoryLabel: AppFactoryView {
    static func create() -> UILabel {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        lb.textAlignment = .center
        lb.textColor = .label
        lb.numberOfLines = 0
        lb.adjustsFontSizeToFitWidth = true
        lb.adjustsFontForContentSizeCategory = true
        
        return lb
    }
}

class FactoryTextView: AppFactoryView {
    static func create() -> UITextView {
        let vw = UITextView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        vw.textAlignment = .center
        vw.textColor = .label
        vw.textContainerInset = .init(
            top: 10.0,
            left: 10.0,
            bottom: 10.0,
            right: 10.0
        )
        
        return vw
    }
}

class FactoryStackView: AppFactoryView {
    static func create(with axis: NSLayoutConstraint.Axis = .vertical) -> UIStackView {
        let vw = UIStackView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        vw.axis = axis
        vw.alignment = .center
        vw.distribution = .fill
        
        return vw
    }
}

class FactoryTableView: AppFactoryView {
    static func create(with style: UITableView.Style = .plain) -> UITableView {
        let vw = UITableView(frame: .zero, style: style)
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        vw.separatorStyle = .none
        vw.rowHeight = UITableView.automaticDimension
        vw.estimatedRowHeight = UITableView.automaticDimension
        
        return vw
    }
}

class FactoryCollectionView: AppFactoryView {
    static func create(with direction: UICollectionView.ScrollDirection = .vertical) -> UICollectionView {
        let fl = UICollectionViewFlowLayout()
        fl.scrollDirection = direction
        fl.itemSize = UICollectionViewFlowLayout.automaticSize
        fl.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        
        let vw = UICollectionView(frame: .zero, collectionViewLayout: fl)
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        return vw
    }
}

class FactoryImageView: AppFactoryView {
    static func create() -> UIImageView {
        let vw = UIImageView(frame: .zero)
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        vw.setContentHuggingPriority(.defaultLow, for: .vertical)
        vw.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        vw.setContentHuggingPriority(.defaultLow, for: .horizontal)
        vw.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        
        return vw
    }
}
