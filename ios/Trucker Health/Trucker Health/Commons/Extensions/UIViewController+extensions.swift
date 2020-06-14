//
//  UIViewController+extensions.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

extension UIViewController {
    
    var appdelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func nextScreen(with viewController: UIViewController, presented: Bool = false) {
        guard let navigationController = self.navigationController else { return }
        
        if presented {
            navigationController.present(viewController, animated: true, completion: nil)
        } else {
            navigationController.pushViewController(viewController, animated: true)
        }
    }
    
}
