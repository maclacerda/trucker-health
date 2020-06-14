//
//  SettingsViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class SettingsViewController: BaseViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Private properties
    
    private let viewModel = SettingsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SettingsCell")
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    // MARK: - Private methods
    
    private func performLogout() {
        let logoutAlert = UIAlertController(title: "Atenção", message: "Deseja sair do sistema agora?", preferredStyle: .alert)

        logoutAlert.addAction(UIAlertAction(title: "Sim", style: .default, handler: { (action: UIAlertAction!) in
            let rootController = BaseNavigationViewController(rootViewController: LoginViewController())
            
            UIApplication.shared.windows.first?.rootViewController = rootController
        }))

        logoutAlert.addAction(UIAlertAction(title: "Não", style: .cancel, handler: nil
        ))

        present(logoutAlert, animated: true, completion: nil)
    }
    
    private func showUnvaliableFeature() {
        let unvaliableViewController = UnvaliableFeatureViewController()
        let navigationController = BaseNavigationViewController(rootViewController: unvaliableViewController)
        
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.modalTransitionStyle = .crossDissolve
        
        nextScreen(with: navigationController, presented: true)
    }

}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell") else {
            return UITableViewCell()
        }
        
        cell.textLabel?.text = viewModel.items[indexPath.row].title
        cell.textLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        cell.textLabel?.textColor = .black
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = viewModel.items[indexPath.row]
        
        if item == .logout {
            performLogout()
        } else {
            showUnvaliableFeature()
        }
    }
    
}
