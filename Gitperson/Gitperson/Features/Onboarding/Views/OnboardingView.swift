//
//  OnboardingView.swift
//  Gitperson
//
//  Created by Bambang Tri Rahmat Doni on 04/01/24.
//

import UIKit

final class OnboardingView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    @available (*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable)
    override class func awakeFromNib() {
        super.awakeFromNib()
        
        fatalError("awakeFromNib() has not been implemented")
    }
    
    private func setupViews() -> Void {
        backgroundColor = .systemRed
    }

}

