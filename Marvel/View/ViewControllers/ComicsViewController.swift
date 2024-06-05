//
//  ComicsViewController.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class ComicsViewController: UIViewController {
    // MARK: - Private Properties
    // MARK: - Public Properties
    weak var coordinator: ComicsCoordinator?

    // MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUserInterface()
    }
    // MARK: - Helpers
    
    private func configureUserInterface() {
        view.backgroundColor = .systemMint
        title = "Comics"
    }
    
    // MARK: - Actions
}
