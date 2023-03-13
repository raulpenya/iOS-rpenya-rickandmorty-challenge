//
//  String+Extensions.swift
//  Data
//
//  Created by raulbot on 5/3/23.
//

import Foundation
@testable import Data

extension String {
    static func getProductsSuccessResponse() -> String {
        return "{\"products\":[{\"code\":\"VOUCHER\",\"name\":\"CabifyVoucher\",\"price\":5},{\"code\":\"TSHIRT\",\"name\":\"CabifyT-Shirt\",\"price\":20},{\"code\":\"MUG\",\"name\":\"CabifyCoffeeMug\",\"price\":7.5}]}"
    }
    
    static func getPromotionsSuccessResponse() -> String {
        return "{\"promotions\":[{\"productCode\":\"VOUCHER\",\"name\":\"Pay1get2\",\"type\":\"PERCENTAGE\",\"unitsNeeded\":2,\"discount\":0.50},{\"productCode\":\"TSHIRT\",\"name\":\"Pricereducedbuying3omoreitems\",\"type\":\"NEWPRICE\",\"unitsNeeded\":3,\"discount\":19.00}]}"
    }
    
    static func getErrorResponse() -> String {
        return "404 Bad request"
    }
    
    static func getEmptyResponse() -> String {
        return ""
    }
}
