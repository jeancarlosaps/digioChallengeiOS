//
//  UIStackViewExtension.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 05/11/23.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { itemView in
            addArrangedSubview(itemView)
        }
    }
}
