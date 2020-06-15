//
//  Dashboard.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

enum DashboardType {
    
    case time
    case bpm
    case sleep
    case alert
    
    var title: String {
        switch self {
            case .bpm: return "Batimentos Cardiácos:       Acelerado"
            default: return " "
        }
    }
    
    var icon: UIImage {
        switch self {
            case .time: return #imageLiteral(resourceName: "drive-time")
            case .bpm: return #imageLiteral(resourceName: "heart")
            case .sleep: return #imageLiteral(resourceName: "sleep-small")
            case .alert: return #imageLiteral(resourceName: "alert-small")
        }
    }
    
    var color: UIColor {
        switch self {
            case .time: return #colorLiteral(red: 0.03137254902, green: 0.4352941176, blue: 0.02352941176, alpha: 1)
            case .bpm: return .red
            case .sleep, .alert: return #colorLiteral(red: 1, green: 0.8745098039, blue: 0, alpha: 1)
        }
    }
    
}

struct Dashboard {
    
    let text: String
    let type: DashboardType
    let exceededLimit: Bool
    
    init(text: String, type: DashboardType, exceededLimit: Bool = false) {
        self.text = text
        self.type = type
        self.exceededLimit = exceededLimit
    }
    
}
