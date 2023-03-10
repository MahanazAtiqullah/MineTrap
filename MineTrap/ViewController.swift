//
//  ViewController.swift
//  MineTrap
//
//  Created by Mahanaz Atiqullah on 2/4/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
    }

}

extension ViewController {
    
    func addDot() {
        let dot = SafeDotView()
        view.addSubview(dot)
        
        dot.translatesAutoresizingMaskIntoConstraints = false
        
        let point = getPoint()
        
        NSLayoutConstraint.activate([
            dot.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: CGFloat(point.1)),
            dot.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: CGFloat(point.0)),
            dot.heightAnchor.constraint(equalToConstant: 90),
            dot.widthAnchor.constraint(equalToConstant: 90)
        ])
    }
    
    func getPoint() -> (Int, Int) {
        let yRange = Int(view.frame.height/2)
        let xRange = Int(view.frame.width/2)
        let yPoint = Int.random(in: -yRange...yRange)
        let xPoint = Int.random(in: -xRange...xRange)
        
        return (xPoint, yPoint)
    }
}

