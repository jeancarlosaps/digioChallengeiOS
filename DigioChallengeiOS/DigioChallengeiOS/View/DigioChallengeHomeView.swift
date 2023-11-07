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
    lazy var topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Olá Jean"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 35)
        label.textColor = .black
        return label
    }()
    
    lazy var carroesellView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var cashFirstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "digio"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 35)
        label.textColor = .black
        return label
    }()
    
    lazy var cashSecondLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cash"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 35)
        label.textColor = .gray
        label.layer.opacity = 0.5
        return label
    }()
    
    lazy var buttonCash: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        button.backgroundColor = .red
        
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        button.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: button.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: button.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: button.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: button.bottomAnchor),
        ])
        
        return button
    }()
    
    lazy var productsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Produtos"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 35)
        label.textColor = .black
        return label
    }()
    
    lazy var secondCarroesellView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    
    // MARK: - INIT
    init() {
        super.init(frame: .zero)
        setupView()
        backgroundColor = .white
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
        addSubview(topImageView)
        addSubview(titleLabel)
        addSubview(carroesellView)
        addSubview(cashFirstLabel)
        addSubview(cashSecondLabel)
        addSubview(buttonCash)
        addSubview(productsLabel)
        addSubview(secondCarroesellView)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            topImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            topImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            topImageView.heightAnchor.constraint(equalToConstant: 50),
            topImageView.widthAnchor.constraint(equalToConstant: 50),
            
            titleLabel.leadingAnchor.constraint(equalTo: topImageView.trailingAnchor, constant: 10),
            titleLabel.centerYAnchor.constraint(equalTo: topImageView.centerYAnchor),
            
            carroesellView.topAnchor.constraint(equalTo: topImageView.bottomAnchor, constant: 20),
            carroesellView.leadingAnchor.constraint(equalTo: leadingAnchor),
            carroesellView.trailingAnchor.constraint(equalTo: trailingAnchor),
            carroesellView.heightAnchor.constraint(equalToConstant: 200),
            
            cashFirstLabel.leadingAnchor.constraint(equalTo: topImageView.leadingAnchor),
            cashFirstLabel.topAnchor.constraint(equalTo: carroesellView.bottomAnchor, constant: 20),
            
            cashSecondLabel.leadingAnchor.constraint(equalTo: cashFirstLabel.trailingAnchor, constant: 5),
            cashSecondLabel.topAnchor.constraint(equalTo: cashFirstLabel.topAnchor),
            
            buttonCash.topAnchor.constraint(equalTo: cashFirstLabel.bottomAnchor, constant: 20),
            buttonCash.heightAnchor.constraint(equalToConstant: 100),
            buttonCash.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            buttonCash.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            productsLabel.topAnchor.constraint(equalTo: buttonCash.bottomAnchor, constant: 20),
            productsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            
            secondCarroesellView.topAnchor.constraint(equalTo: productsLabel.bottomAnchor, constant: 20),
            secondCarroesellView.leadingAnchor.constraint(equalTo: leadingAnchor),
            secondCarroesellView.trailingAnchor.constraint(equalTo: trailingAnchor),
            secondCarroesellView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    @objc func tapped(){
        print("funfa")
    }
}
