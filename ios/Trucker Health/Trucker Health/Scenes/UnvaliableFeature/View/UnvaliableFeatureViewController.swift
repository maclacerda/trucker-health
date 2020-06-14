//
//  UnvaliableFeatureViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class UnvaliableFeatureViewController: BaseViewController {

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Private methods
    
    private func setup() {
        changeNavigationbarVisibility(false)
        statusBarHidden = false
        statusBarStyle = .lightContent
        
        applyNavigationBarStyle()
    }
    
    // MARK: - Actions
    
    @IBAction private func goButtonAction() {
        guard let navigationController = self.navigationController else { return }
        navigationController.dismiss(animated: true, completion: nil)
    }

}
