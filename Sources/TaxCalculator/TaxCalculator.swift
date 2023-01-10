public struct TaxCalculator: TaxCalculatorProtocol {
    private func percent(by value: Double) -> Double {
        return (100 - value) / 100
    }
    
    public func calculateNet(with gross: Double, rates: [TaxRateModel]) -> Double? {
        guard rates.count > 0 else { return gross }
        guard gross > rates[0].minValue else { return gross }
        
        var net = rates[0].minValue
        var rate = 0.0
        
        for i in 1..<rates.count {
            rate = percent(by: rates[i-1].rate)
            
            guard gross > rates[i].minValue else {
                net += (gross - rates[i-1].minValue) * rate
                return net
            }
            
            net += (rates[i].minValue - rates[i-1].minValue) * rate
        }
        
        guard let lastTax = rates.last else { return net }
        net += (gross - lastTax.minValue) * percent(by: lastTax.rate)
        
        return net
    }
    
    public func calculateGross(with net: Double, rates: [TaxRateModel]) -> Double? {
        guard rates.count > 0 else { return net }
        guard net > rates[0].minValue else { return net }
        
        var gross = rates[0].minValue
        var gapNet = rates[0].minValue
        var rate = 0.0
        
        for i in 1..<rates.count {
            rate = percent(by: rates[i-1].rate)
            
            guard net / rate > rates[i].minValue else {
                gross += (net - gapNet) / rate
                return gross
            }
            
            gross += rates[i].minValue - rates[i-1].minValue
            gapNet += (rates[i].minValue - rates[i-1].minValue) * rate
        }
        
        guard let lasTax = rates.last else { return gross }
        gross += (net - gapNet) / percent(by: lasTax.rate)
        
        return gross
    }
    
    public init() {
    }
}
