//
//  UIImageExtension.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 05/11/23.
//

import UIKit

extension UIImage {
    
    // MARK: - ICONS
    
    public class var headerIcon: UIImage {
        return initialize(with: "header_icon")
    }
    
    // MARK: - INITIALIZER
    
    fileprivate class func initialize(with name: String) -> UIImage {
        return UIImage(named: name, in: Bundle.main, compatibleWith: nil) ?? UIImage()
    }
}
