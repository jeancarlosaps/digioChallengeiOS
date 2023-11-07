//
//  DigioChallengeViewController.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 05/11/23.
//

import Foundation
import UIKit

class DigioChallengeViewController: UIViewController {
    var viewModel: DigioChallengeViewModel?
    
    override func loadView() {
        super.loadView()
        view = DigioChallengeHomeView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let service = DigioChallengeService()
        viewModel = DigioChallengeViewModel(service: service)
        fetchData()
    }
    
    // TODO: implement
    func fetchData() {
        viewModel?.fetchData { data in
            // Use os dados aqui conforme necessário
            print(data)
            // Atualize a interface do usuário com os dados obtidos, por exemplo:
            DispatchQueue.main.async {
                // Atualize a UI aqui
            }
        }
    }
}
