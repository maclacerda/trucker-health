//
//  HealthDetailTableViewCell.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class HealthDetailTableViewCell: UITableViewCell {

    @IBOutlet private weak var photoView: UIImageView!
    @IBOutlet private weak var titleView: UILabel!
    @IBOutlet private weak var descriptionView: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoView.image = nil
        titleView.text = ""
        descriptionView.text = ""
    }
    
    func setup(with item: Health) {
        photoView.image = item.photo
        titleView.text = item.title
        descriptionView.text = item.description
    }
    
}
