//
//  BlackMineDotView.swift
//  MineTrap
//
//  Created by Mahanaz Atiqullah on 2/4/23.
//

import UIKit

class BlackMineDotView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray
        self.layer.cornerRadius = 45
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
