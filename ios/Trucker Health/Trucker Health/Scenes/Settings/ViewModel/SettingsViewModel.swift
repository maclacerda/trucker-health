//
//  SettingsViewModel.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import Foundation

struct SettingsViewModel {
    
    internal let items: [Settings]
    
    init() {
        items = Settings.allCases
    }
    
}
