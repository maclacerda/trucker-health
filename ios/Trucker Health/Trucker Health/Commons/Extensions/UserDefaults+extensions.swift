//
//  UserDefaults+extensions.swift
//
//  Created by Marcos Lacerda on 29/05/18.
//

import Foundation

extension UserDefaults {
    
    func readBoolValue(_ key: String) -> Bool {
        return self.bool(forKey: key)
    }
    
    func writeBoolValue(_ key: String, value: Bool) {
        self.set(value, forKey: key)
        self.sync()
    }
    
    fileprivate func sync() {
        self.synchronize()
    }
    
}
