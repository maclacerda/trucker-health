//
//  Settings.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import Foundation

enum Settings {
    
    case changePassword
    case editPlate
    case showRanking
    case widgetsVisibility
    case yourPatterns
    case talkToUs
    case termsOfUse
    case policiePrivacy
    case logout
    
    var title: String {
        switch self {
            case .changePassword: return "Alteração de senha"
            case .editPlate: return "Editar placa do veículo"
            case .showRanking: return "Ranking do mês"
            case .widgetsVisibility: return "Configurações de exibição"
            case .yourPatterns: return "Conheça nossos parceiros"
            case .talkToUs: return "Converse conosco"
            case .termsOfUse: return "Termos de uso"
            case .policiePrivacy: return "Políticas de privacidade"
            case .logout: return "Sair"
        }
    }
    
    static var allCases: [Settings] {
        return [.changePassword, .editPlate, .showRanking, .widgetsVisibility, .yourPatterns, .talkToUs, .termsOfUse, .policiePrivacy, .logout]
    }
    
}
