//
//  SceneDelegate.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var statusBarManager: UIStatusBarManager?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .white
        
        statusBarManager = windowScene.statusBarManager
        
        let rootController = LoginViewController()
        let navigationController = BaseNavigationViewController(rootViewController: rootController)
        
        changeRootViewController(navigationController)
        
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Not called under iOS 12 - See AppDelegate applicationDidBecomeActive
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Not called under iOS 12 - See AppDelegate applicationWillResignActive
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Not called under iOS 12 - See AppDelegate applicationWillEnterForeground
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Not called under iOS 12 - See AppDelegate applicationDidEnterBackground
    }
    
    // MARK: - Private methods
    
    private func changeRootViewController(_ rootViewController: UIViewController) {
        guard let window = self.window else { return }
        window.rootViewController = rootViewController
        
        UIView.transition(with: window, duration: 0.5, options: UIView.AnimationOptions.transitionCrossDissolve, animations: {
        }, completion: nil)
    }
    
}
