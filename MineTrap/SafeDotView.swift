//
//  SafeDotView.swift
//  MineTrap
//
//  Created by Mahanaz Atiqullah on 2/4/23.
//

import UIKit

class SafeDotView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemPink
        self.layer.cornerRadius = 45
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SafeDotView {
    
    @objc func handleTap() {
        self.removeFromSuperview()
    }
}

