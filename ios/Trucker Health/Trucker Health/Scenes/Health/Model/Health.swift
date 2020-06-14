//
//  Health.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

struct Health {
    
    let photo: UIImage
    let title: String
    let description: String
    
    init(photo: UIImage, title: String, description: String) {
        self.photo = photo
        self.title = title
        self.description = description
    }
    
}
