import XCTest
@testable import TaxCalculator

final class TaxCalculatorTests: XCTestCase {
    var salaryCalculator: TaxCalculator!

    override func setUpWithError() throws {
        salaryCalculator = TaxCalculator()
    }

    override func tearDownWithError() throws {
        salaryCalculator = nil
    }
//
//    func testGrossCalculationWithOneNonZeroTaxRateFromZero() {
//        let net = 100.0
//        let rate = 10.0
//        let minValue = 0.0
//        let tax = TaxRateModel(minValue: minValue, rate: rate)
//        
//        let expectedGross = net * 100 / (100 - rate)
//        
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [tax])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    func testGrossCalculationWithOneNonZeroTaxRateAndMinValueLessThanNet() {
//        let net = 200.0
//        let rate = 15.0
//        let minValue = 100.0
//        let tax = TaxRateModel(minValue: minValue, rate: rate)
//        
//        let expectedGross = (net - rate) * 100 / (100 - rate)
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [tax])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    func testGrossCalculationWithOneNonZeroTaxRateAndMinValueMoreThanNet() {
//        let net = 300.0
//        let rate = 20.0
//        let minValue = 500.0
//        let tax = TaxRateModel(minValue: minValue, rate: rate)
//        
//        let expectedGross = net
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [tax])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    func testGrossCalculationWithZeroNetAndNonZeroTax() {
//        let net = 0.0
//        let rate = 30.0
//        let minValue = 0.0
//        let tax = TaxRateModel(minValue: minValue, rate: rate)
//        
//        let expectedGross = net
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [tax])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    func testGrossCalculationWithZeroTaxRate() {
//        let net = 400.0
//        let rate = 0.0
//        let minValue = 0.0
//        let tax = TaxRateModel(minValue: minValue, rate: rate)
//        
//        let expectedGross = net
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [tax])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    func testGrossCalculationWithEmptyTaxRates() {
//        let net = 500.0
//        
//        let expectedGross = net
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    func testGrossCalculationWithTaxRateEquals100() {
//        // Bad inpud data
//        let net = 600.0
//        let rate = 100.0
//        let minValue = 0.0
//        let tax = TaxRateModel(minValue: minValue, rate: rate)
//        
//        let expectedGross = net * 2
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [tax])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    // todo: net = 0, rate = 100%
//    
//    func testGrossCalculationWithThreeTaxRatesAndZeroMinValue() {
//        let net = 1000.0
//        let tax1 = TaxRateModel(minValue: 0.0, rate: 10.0)
//        let tax2 = TaxRateModel(minValue: 100.0, rate: 20.0)
//        let tax3 = TaxRateModel(minValue: 500.0, rate: 30.0)
//        
//        let expectedGross = (10 * net - 600) / 7
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [
//                                                            tax1,
//                                                            tax2,
//                                                            tax3])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
//    
//    func testGrossCalculationWithTwoEqualsRates() {
//        // Bad inpud data
//        let net = 1000.0
//        let rate = 10.0
//        let minValue = 0.0
//        let tax1 = TaxRateModel(minValue: minValue, rate: rate)
//        let tax2 = TaxRateModel(minValue: minValue, rate: rate)
//        
//        let expectedGross = net * 100 / (100 - rate)
//        let actualGross = salaryCalculator.calculateGross(with: net,
//                                                          rates: [
//                                                          tax1,
//                                                          tax2])
//        XCTAssertEqual(expectedGross, actualGross)
//    }
}
