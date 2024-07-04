//
//  Double+Extention.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 04/07/24.
//

import Foundation

extension Double {
    private var curruncyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurruncy() -> String {
        return curruncyFormatter.string(for: self) ?? "$0.00"
    }
}
