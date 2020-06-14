//
//  String+extensions.swift
//
//  Created by Marcos Lacerda on 11/04/19.
//

import Foundation

extension String {

    func removeSpecialCharacters() -> String {
        let notAllowedChars = CharacterSet(charactersIn: "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+").inverted
        
        return self.components(separatedBy: notAllowedChars).joined(separator: "")
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluate(with: self)
    }
    
    func isValidCPF() -> Bool {
        let numbers = self.compactMap({Int(String($0))})
        
        guard numbers.count == 11 && Set(numbers).count != 1 else { return false }
        
        let soma1 = 11 - ( numbers[0] * 10 +
            numbers[1] * 9 +
            numbers[2] * 8 +
            numbers[3] * 7 +
            numbers[4] * 6 +
            numbers[5] * 5 +
            numbers[6] * 4 +
            numbers[7] * 3 +
            numbers[8] * 2 ) % 11
        
        let dv1 = soma1 > 9 ? 0 : soma1
        
        let soma2 = 11 - ( numbers[0] * 11 +
            numbers[1] * 10 +
            numbers[2] * 9 +
            numbers[3] * 8 +
            numbers[4] * 7 +
            numbers[5] * 6 +
            numbers[6] * 5 +
            numbers[7] * 4 +
            numbers[8] * 3 +
            numbers[9] * 2 ) % 11
        
        let dv2 = soma2 > 9 ? 0 : soma2
        
        return dv1 == numbers[9] && dv2 == numbers[10]
    }
    
    public var isEmpty: Bool {
        return self.replacingOccurrences(of: " ", with: "") == ""
    }
    
    public func substring(_ from: Int, count: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: from)
        let endIndex = self.index(self.startIndex, offsetBy: from + count)
        let range = startIndex..<endIndex
        
        return String(self[range])
    }

}
