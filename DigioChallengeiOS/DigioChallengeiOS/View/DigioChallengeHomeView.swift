//
//  DigioChallengeHomeView.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 06/11/23.
//

import Foundation
import UIKit

class DigioChallengeHomeView: UIView {
    
    // MARK: - PROPERTIES
    
    // MARK: - UI
    
    // MARK: - INIT
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - PRIVATE METHODS
    private func setupView() {
        buildViewHierarchy()
        addConstraints()
    }
    
    private func buildViewHierarchy() {
        //TODO: ADD SUBVIEWS
    }
    
    private func addConstraints() {
        //TODO: ADD CONSTRAINTS
    }
}
