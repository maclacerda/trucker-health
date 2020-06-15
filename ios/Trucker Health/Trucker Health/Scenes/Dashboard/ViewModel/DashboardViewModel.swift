//
//  DashboardViewModel.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import Foundation

class DashboardViewModel {
    
    internal var items = [Dashboard]()
    
    private static var exceedLimit = false
    
    init() {
        items.append(makeAlert())
        items.append(makeSleep())
        items.append(makeBpm())
    }
    
    // MARK: - Public methods
    
    func fetchData() {
        if items.count == 3 {
            items.insert(makeDrive(), at: 0)
        } else {
            DashboardViewModel.exceedLimit = !DashboardViewModel.exceedLimit
            items.removeFirst()
            fetchData()
        }
    }
    
    // MARK: - Private methods
    
    private func makeDrive() -> Dashboard {
        return Dashboard(text: DashboardViewModel.exceedLimit ? "Tempo Dirigido: 10h" : "Tempo Dirigido: 6h", type: .time, exceededLimit: DashboardViewModel.exceedLimit)
    }
    
    private func makeAlert() -> Dashboard {
        return Dashboard(text: "Às 20:00h emitiremos um alerta avisando que falta 1h para encerrar seu periodo de viagem, procure um lugar para descansar.", type: .alert)
    }
    
    private func makeSleep() -> Dashboard {
        return Dashboard(text: "Aproximadamente às 20:45h você irá passar pelo próximo posto de gasolina no qual poderá descansar.", type: .sleep)
    }
    
    private func makeBpm() -> Dashboard {
        return Dashboard(text: "Nas últimas 24h a média de batimentos foi de 200BPM. Recomendamos que você não dirija e procure um ambulatório.", type: .bpm)
    }
    
}
