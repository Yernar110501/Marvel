//
//  CharactersCoordinator.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class CharactersCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CharactersViewController()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person.2.fill"), tag: 1)
        navigationController.viewControllers = [vc]
    }
}
