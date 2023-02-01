//
//  TaxRateModel.swift
//  
//
//  Created by Мария Газизова on 09.01.2023.
//

import Foundation

public struct TaxRateModel: Identifiable, Equatable, Hashable, Comparable {
    public static func < (lhs: TaxRateModel, rhs: TaxRateModel) -> Bool {
        return lhs.minValue < rhs.minValue
    }
    
    public var id = UUID()
    public var minValue: Double
    public var rate: Double
    
    public init(minValue: Double, rate: Double) {
        self.minValue = minValue
        self.rate = rate
    }
}
