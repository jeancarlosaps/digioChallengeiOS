//
//  DigioChallengeService.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 05/11/23.
//

import Foundation

protocol DigioChallengeServiceProtocol {
    func fetchData(completion: @escaping (Result<DigioChallengeHomeModel, Error>) -> Void)
}

class DigioChallengeService: DigioChallengeServiceProtocol {
    
    func fetchData(completion: @escaping (Result<DigioChallengeHomeModel, Error>) -> Void) {
        
        guard let url = URL(string: "https://7hgi9vtkdc.execute-api.sa-east-1.amazonaws.com/sandbox/products") else {
            completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "URL inválida"])))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Dados inválidos"])))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let responseData = try decoder.decode(DigioChallengeHomeModel.self, from: data)
                completion(.success(responseData))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}

