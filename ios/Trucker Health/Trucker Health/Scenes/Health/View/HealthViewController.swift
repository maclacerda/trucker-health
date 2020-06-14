//
//  HealthViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class HealthViewController: BaseViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Private properties
    
    private let viewModel = HealthViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "HealthTableViewCell", bundle: nil), forCellReuseIdentifier: "HealthCell")
        
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
    }
    
}

extension HealthViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HealthCell") as? HealthTableViewCell else {
            return UITableViewCell()
        }
        
        cell.selectionStyle = .none
        cell.setup(with: viewModel.items[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 308
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = viewModel.items[indexPath.row]
        let healthDetailController = HealthDetailViewController()
        
        healthDetailController.healtDetail = item
        healthDetailController.hidesBottomBarWhenPushed = true
        
        nextScreen(with: healthDetailController)
    }
    
}
