//
//  DigioChallengeViewModel.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 05/11/23.
//

import Foundation

class DigioChallengeViewModel {
    
    private let service: DigioChallengeServiceProtocol
    
    init(service: DigioChallengeServiceProtocol) {
        self.service = service
    }
    
    func fetchData(completion: @escaping (DigioChallengeHomeModel) -> Void) {
        service.fetchData { result in
            switch result {
                case .success(let data):
                    completion(data)
                case .failure(let error):
                    // Trate os erros adequadamente
                    print("Erro ao buscar dados: \(error.localizedDescription)")
            }
        }
    }
}
