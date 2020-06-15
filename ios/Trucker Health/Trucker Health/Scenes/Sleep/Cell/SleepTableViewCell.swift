//
//  SleepTableViewCell.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

protocol SleepTableViewCellDelegate: class {
    func goToDetail()
}

class SleepTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var snoozeImage: UIImageView!
    @IBOutlet private weak var snoozeTitle: UILabel!
    
    weak var delegate: SleepTableViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        snoozeImage.isUserInteractionEnabled = true
        snoozeTitle.isUserInteractionEnabled = true
        
        let imageTap = UITapGestureRecognizer(target: self, action: #selector(clickImage))
        let titleTap = UITapGestureRecognizer(target: self, action: #selector(clickTitle))
        
        snoozeImage.addGestureRecognizer(imageTap)
        snoozeTitle.addGestureRecognizer(titleTap)
    }
    
    // MARK: - Private methods
    
    @objc private func clickImage() {
        goToDetail()
    }
    
    @objc private func clickTitle() {
        goToDetail()
    }
    
    private func goToDetail() {
        delegate?.goToDetail()
    }
    
}
