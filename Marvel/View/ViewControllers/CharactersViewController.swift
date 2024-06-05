//
//  CharactersViewController.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class CharactersViewController: UIViewController {
    // MARK: - Private Properties
    // MARK: - Public Properties
    weak var coordinator: CharactersCoordinator?

    
    // MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUserInterface()
    }
    // MARK: - Helpers
    
    private func configureUserInterface() {
        view.backgroundColor = .systemGray
        title = "Characters"
    }
    
    // MARK: - Actions
}
