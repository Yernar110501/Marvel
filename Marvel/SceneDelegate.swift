//
//  SceneDelegate.swift
//  Marvel
//
//  Created by Yernar Baiginzheyev on 05.06.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var mainCoordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let navController = UINavigationController()
        mainCoordinator = MainCoordinator(navigationController: navController)
        mainCoordinator?.start()
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}

