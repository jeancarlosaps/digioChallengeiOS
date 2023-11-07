//
//  DigioChallengeHomeModel.swift
//  DigioChallengeiOS
//
//  Created by Jean Carlos on 06/11/23.
//

import UIKit

struct DigioChallengeHomeModel: Codable {
    let spotlight: [Items]
    let products: [Items]
    let cash: [Items]
}

struct Items: Codable {
    let name: String
    let bannerURL: String
    let description: String
}
