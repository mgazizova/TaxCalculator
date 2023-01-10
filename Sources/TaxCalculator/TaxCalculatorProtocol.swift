//
//  TaxCalculatorProtocol.swift
//  
//
//  Created by Мария Газизова on 09.01.2023.
//

import Foundation

protocol TaxCalculatorProtocol {
    func calculateNet(with gross: Double, rates: [TaxRateModel]) -> Double?
    func calculateGross(with net: Double, rates: [TaxRateModel]) -> Double?
}
