//
//  TaxRateModel.swift
//  
//
//  Created by Мария Газизова on 09.01.2023.
//

import Foundation

public class TaxRateModel: Identifiable, Equatable {
    public var minValue: Double
    public var rate: Double
    
    init(minValue: Double, rate: Double) {
        self.minValue = minValue
        self.rate = rate
    }
}

extension TaxRateModel {
    public static func == (lhs: TaxRateModel, rhs: TaxRateModel) -> Bool {
        lhs.rate == rhs.rate && lhs.minValue == rhs.minValue
    }
}
