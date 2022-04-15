//
//  BundleExtensions.swift
//  BundleProvider
//
//  Created by Thanh Vu on 18/10/2021.
//

import Foundation
import CoreUtils

private var cacheBundles: [ResourceBundleType: Bundle] = [:]

public extension Bundle {
    static func resourceBundle(for type: ResourceBundleType) -> Bundle {
        if let bundle = cacheBundles[type] {
            return bundle
        }

        let bundle = Bundle.resourceBundle(name: type.rawValue)
        cacheBundles[type] = bundle
        return bundle
    }
}
