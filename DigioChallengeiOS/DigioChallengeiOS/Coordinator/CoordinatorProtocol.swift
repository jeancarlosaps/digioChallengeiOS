//
//  Coordinator.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 05/11/23.
//

import Foundation
import UIKit


protocol CoordinatorProtocol {
    var navigationController : UINavigationController { get }
    func  start ()
    init (navigationController: UINavigationController)
}
