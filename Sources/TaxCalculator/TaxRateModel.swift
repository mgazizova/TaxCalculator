//
//  TaxRateModel.swift
//  
//
//  Created by Мария Газизова on 09.01.2023.
//

import Foundation

public struct TaxRateModel: Identifiable {
    public var id = UUID()
    public var minValue: Double
    public var rate: Double
    
    init(minValue: Double, rate: Double) {
        self.minValue = minValue
        self.rate = rate
    }
}
