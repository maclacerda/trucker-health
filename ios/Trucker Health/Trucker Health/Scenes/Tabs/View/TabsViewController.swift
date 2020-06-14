//
//  TabsViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class TabsViewController : UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var viewControllers = [UIViewController]()
        
        // Make the views
        viewControllers.append(makeHomeController())
        viewControllers.append(makeSleepController())
        viewControllers.append(makeSOSController())
        viewControllers.append(makeHealthController())
        viewControllers.append(makeSettingsController())
        
        self.viewControllers = viewControllers
        
        // Customize tabbar
        tabBar.tintColor = #colorLiteral(red: 0.8892157674, green: 0.2300431132, blue: 0.3604977131, alpha: 1)
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.8549019608, green: 0.8549019608, blue: 0.8549019608, alpha: 1)
    }
    
    // MARK: - Private methods
    
    private func makeHomeController() -> BaseNavigationViewController {
        let homeController = BaseViewController()
        let navigationController = BaseNavigationViewController(rootViewController: homeController)
        
        navigationController.title = ""
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "home")
        
        homeController.title = ""
        homeController.applyNavigationBarStyle()
        
        return navigationController
    }
    
    private func makeSleepController() -> BaseNavigationViewController {
        let sleepViewController = BaseViewController()
        let navigationController = BaseNavigationViewController(rootViewController: sleepViewController)
        
        navigationController.title = ""
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "sleep")
        
        sleepViewController.title = ""
        sleepViewController.applyNavigationBarStyle()
        
        return navigationController
    }
    
    private func makeSOSController() -> BaseNavigationViewController {
        let sosViewController = SOSViewController()
        let navigationController = BaseNavigationViewController(rootViewController: sosViewController)
        
        navigationController.title = ""
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "sos")
        
        sosViewController.title = ""
        sosViewController.applyNavigationBarStyle()
        
        return navigationController
    }
    
    private func makeHealthController() -> BaseNavigationViewController {
        let healthViewController = HealthViewController()
        let navigationController = BaseNavigationViewController(rootViewController: healthViewController)
        
        navigationController.title = ""
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "health")
        
        healthViewController.title = ""
        healthViewController.applyNavigationBarStyle()
        
        return navigationController
    }
    
    private func makeSettingsController() -> BaseNavigationViewController {
        let settingsViewController = SettingsViewController()
        let navigationController = BaseNavigationViewController(rootViewController: settingsViewController)
        
        navigationController.title = ""
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "settings")
        
        settingsViewController.title = ""
        settingsViewController.applyNavigationBarStyle()
        
        return navigationController
    }
    
}
