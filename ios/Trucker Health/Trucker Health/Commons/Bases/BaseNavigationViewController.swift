//
//  BaseNavigationViewController.swift
//
//  Created by Marcos Lacerda on 17/10/18.
//

import UIKit

class BaseNavigationViewController: UINavigationController {

    var statusBarStyle: UIStatusBarStyle = .default {
        didSet {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    var statusBarHidden: Bool = false {
        didSet {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    override var prefersStatusBarHidden: Bool { return statusBarHidden }
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return statusBarStyle }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation { return .fade }
    
}
