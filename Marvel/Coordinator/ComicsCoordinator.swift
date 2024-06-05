//
//  ComicsCoordinator.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class ComicsCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ComicsViewController()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(title: "Comics", image: UIImage(systemName: "book.pages.fill"), tag: 2)
        navigationController.viewControllers = [vc]
    }
    
}
