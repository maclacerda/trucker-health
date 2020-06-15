//
//  DashboardTableViewCell.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class DashboardTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var colorContainer: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var icon: UIImageView!
    @IBOutlet private weak var contentLabel: UILabel!
    @IBOutlet private weak var shadowContainer: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setup(with item: Dashboard) {
        colorContainer.backgroundColor = item.type.color
        titleLabel.text = item.type.title
        icon.image = item.type.icon
        contentLabel.text = item.text
        
        if item.exceededLimit {
            titleLabel.text = item.text
            contentLabel.text = "Você ultrapassou o tempo permitido de viagem, pare no próximo posto para descansar."
            
            titleLabel.textColor = .white
            contentLabel.textColor = .white
            shadowContainer.image = #imageLiteral(resourceName: "card-shadow-exceeded")
            icon.image = #imageLiteral(resourceName: "drive-time-white")
            colorContainer.backgroundColor = .clear
        } else {
            titleLabel.textColor = .black
            contentLabel.textColor = .black
            shadowContainer.image = #imageLiteral(resourceName: "card-shadow")
        }
    }
    
}
