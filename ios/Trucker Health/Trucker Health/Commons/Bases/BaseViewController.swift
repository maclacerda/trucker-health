//
//  BaseViewController.swift
//
//  Created by Marcos Lacerda on 17/10/18.
//

import UIKit

class BaseViewController: UIViewController {

    var statusBarStyle: UIStatusBarStyle = .default {
        didSet {
            guard let navigationController = self.navigationController as? BaseNavigationViewController else { return }
            navigationController.statusBarStyle = statusBarStyle
        }
    }
    
    var statusBarHidden: Bool = false {
        didSet {
            guard let navigationController = self.navigationController as? BaseNavigationViewController else { return }
            navigationController.statusBarHidden = statusBarHidden
        }
    }
    
    func changeNavigationbarVisibility(_ hidden: Bool) {
        self.navigationController?.isNavigationBarHidden = hidden
    }
    
    func applyNavigationBarStyle() {
        guard let navigationController = self.navigationController else { return }
        let navigationBar = navigationController.navigationBar
        
        navigationBar.isTranslucent = false
        navigationBar.isOpaque = false
        navigationBar.barTintColor = #colorLiteral(red: 0.8892157674, green: 0.2300431132, blue: 0.3604977131, alpha: 1)
        navigationBar.tintColor = .white
        
        navigationItem.titleView = makeHeaderView()
        
        statusBarStyle = .lightContent
    }
    
    private func makeHeaderView() -> UIView {
        let headerView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 44)))
        let imageView = UIImageView()
        
        imageView.image = #imageLiteral(resourceName: "header")
        imageView.contentMode = .scaleAspectFit
        imageView.sizeToFit()
        
        headerView.backgroundColor = .clear
        headerView.addSubview(imageView)
        headerView.sizeToFit()
        
        imageView.center = headerView.center
        
        return headerView
        
    }
    
}
