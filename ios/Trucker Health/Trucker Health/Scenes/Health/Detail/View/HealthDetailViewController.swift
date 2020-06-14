//
//  HelathDetailViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class HealthDetailViewController: BaseViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    var healtDetail: Health?
    
    // MARK: - Private properties
    
    private let viewModel = HealthViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "HealthDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "HealthDetailCell")
        
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
    }

}

extension HealthDetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HealthDetailCell") as? HealthDetailTableViewCell, let item = self.healtDetail else {
            return UITableViewCell()
        }
        
        cell.selectionStyle = .none
        cell.setup(with: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
}
