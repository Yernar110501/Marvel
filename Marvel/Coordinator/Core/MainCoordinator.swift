//
//  MainCoordinator.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController

    }
    
    func start() {
        let tabBarController = UITabBarController()
        
        let charactersNavController = UINavigationController()
        let charactersCoordinator = CharactersCoordinator(navigationController: charactersNavController)
        charactersCoordinator.start()
        
        let comicsNavController = UINavigationController()
        let comiscCoordinator = ComicsCoordinator(navigationController: comicsNavController)
        comiscCoordinator.start()
        
        
        let settingsNavController = UINavigationController()
        let settingsCoordinator = SettingsCoordinator(navigationController: settingsNavController)
        settingsCoordinator.start()
        
        tabBarController.viewControllers = [charactersNavController, comicsNavController, settingsNavController]
        navigationController.viewControllers = [tabBarController]
        childCoordinators.append(charactersCoordinator)
        childCoordinators.append(comiscCoordinator)
        childCoordinators.append(settingsCoordinator)
    }
    
    
}
