//
//  DoubleExtensions.swift
//  KiteVid
//
//  Created by Thanh Vu on 01/05/2021.
//  Copyright © 2021 Thanh Vu. All rights reserved.
//

import Foundation

public extension Double {
    func round(digit: Int) -> Double {
        let multipler = pow(10, Double(digit))

        return (self * multipler).rounded() / multipler
    }
}
