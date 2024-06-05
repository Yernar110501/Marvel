//
//  SettingsCoordinator.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class SettingsCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SettingsViewController()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 3)
        navigationController.viewControllers = [vc]
    }
}
