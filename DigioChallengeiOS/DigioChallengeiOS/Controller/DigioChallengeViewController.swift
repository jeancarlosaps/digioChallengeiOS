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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
        view.backgroundColor = .red
        
        let service = DigioChallengeService()
        viewModel = DigioChallengeViewModel(service: service)
        fetchData()
    }
    
    
    private func setupView() {
       // view.addSubview()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        
        
        
        ])
    }
    
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
