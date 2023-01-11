//
//  TaxRateModel.swift
//  
//
//  Created by Мария Газизова on 09.01.2023.
//

import Foundation

public struct TaxRateModel: Identifiable, Equatable {
    public var id = UUID()
    public var minValue: Double
    public var rate: Double
    
    public init(minValue: Double, rate: Double) {
        self.minValue = minValue
        self.rate = rate
    }
}
