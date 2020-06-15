//
//  LoginViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit
import MBProgressHUD

class LoginViewController: BaseViewController {
    
    // MARK: - Private properties
    
    private let viewModel = LoginViewModel()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK: - Private methods
    
    private func setup() {
        changeNavigationbarVisibility(true)
        statusBarHidden = false
        statusBarStyle = .default
    }
    
    // MARK: - Actions
    
    @IBAction private func goButtonAction() {
        MBProgressHUD.showAdded(to: self.navigationController!.view, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [unowned self] in
            MBProgressHUD.hide(for: self.navigationController!.view, animated: true)
            
            self.viewModel.saveCredentials()
            self.nextScreen(with: ChangePasswordViewController())
        }
    }

}
