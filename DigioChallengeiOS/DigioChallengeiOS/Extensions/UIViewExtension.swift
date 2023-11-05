//
//  UIViewExtension.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 05/11/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { itemView in
            addSubview(itemView)
        }
    }
}
