//
//  RegistrationController.swift
//  TwitterTutorial
//
//  Created by Samuel on 02/11/22.
//

import UIKit

class RegistrationController: UIViewController {
    
    // MARK: - Properties
    
    private let alreadyHaveAccountButton: UIButton = {
        let button = Utilities().attributedButton(firstPart: "Already have an account?", secondPart: " Sign In")
        button.addTarget(self, action: #selector(handleShowLogin), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    @objc func handleShowLogin() {
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
        
        view.addSubview(alreadyHaveAccountButton)
        alreadyHaveAccountButton.anchor(left: view.leftAnchor,
                                     bottom: view.safeAreaLayoutGuide.bottomAnchor,
                                     right: view.rightAnchor, paddingLeft: 40,
                                     paddingRight: 40)
    }
}
