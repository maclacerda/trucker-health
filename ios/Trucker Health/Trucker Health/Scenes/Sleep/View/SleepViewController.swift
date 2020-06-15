//
//  SleepViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class SleepViewController: BaseViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "SleepTableViewCell", bundle: nil), forCellReuseIdentifier: "SleepCell")
        
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
    }
    
}

extension SleepViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SleepCell") as? SleepTableViewCell else {
            return UITableViewCell()
        }
        
        cell.selectionStyle = .none
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 979
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
}

extension SleepViewController: SleepTableViewCellDelegate {
    
    func goToDetail() {
        let healthDetailController = HealthDetailViewController()
        
        healthDetailController.healtDetail = Health(photo: #imageLiteral(resourceName: "snooze"), title: "Veja aqui a importância do sono para a saúde.", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida tempor tincidunt. Vivamus non dapibus sapien. Cras tristique tellus a purus accumsan, sit amet fermentum mi pretium. In lobortis orci ut orci maximus finibus. Mauris eleifend maximus purus at lobortis. Vivamus non risus ut nulla convallis pretium sit amet mattis tellus. In hac habitasse platea dictumst. Nunc at nisl fringilla ipsum suscipit rhoncus vitae quis risus. Vivamus porta at elit in convallis. Ut varius euismod mi vestibulum ultricies. Nulla felis augue, convallis eu ornare sed, ullamcorper a est. Curabitur aliquet id nulla sit amet gravida. Maecenas non mattis nisi. Aliquam erat volutpat.\n\nVivamus eget faucibus sapien. Praesent aliquet dui velit, vel hendrerit augue feugiat in. Donec pulvinar interdum ipsum eget tempus. Pellentesque ut mauris in orci maximus lobortis. Nam placerat sit amet dolor lacinia imperdiet. Donec et malesuada purus. Etiam in aliquam eros. Donec pellentesque id massa sit amet molestie. Fusce eu velit dapibus, semper orci at, interdum tortor.\n\nQuisque a egestas risus, pellentesque vestibulum erat. Sed arcu metus, euismod non urna nec, congue pulvinar massa. Morbi aliquet tortor vel nunc sodales, congue finibus turpis tristique. Curabitur volutpat leo et turpis lacinia, dignissim scelerisque massa lobortis. Aliquam at gravida lorem. Mauris scelerisque mi vitae ipsum suscipit, ut finibus nunc pharetra. Praesent porttitor sapien in diam elementum mollis vel egestas nibh. Praesent posuere malesuada erat, nec dignissim odio ullamcorper at.")
        
        healthDetailController.hidesBottomBarWhenPushed = true
        
        nextScreen(with: healthDetailController)
    }
    
}
