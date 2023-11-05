//
//  Coordinator.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos.
//

import Foundation
import UIKit

class DigioChallengeCoordinator: CoordinatorProtocol {
    var navigationController: UINavigationController
    
    func start() {
        // Adicione a implementação do início do coordinator aqui
        let viewController  = DigioChallengeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
   }

    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
