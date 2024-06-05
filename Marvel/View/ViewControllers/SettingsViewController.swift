//
//  SettingsViewController.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class SettingsViewController: UIViewController {
    // MARK: - Private Properties
    
    // MARK: - Public Properties
    weak var coordinator: SettingsCoordinator?
    
    // MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUserInterface()
    }
    // MARK: - Helpers
    
    private func configureUserInterface() {
        view.backgroundColor = .purple
        title = "Settings"
    }
    
    // MARK: - Actions
}
