//
//  CommonErrorView.swift
//
//  Created by Thanh Vu on 10/04/2021.
//  Copyright © 2021 Thanh Vu. All rights reserved.
//

import Foundation
import UIKit
import BundleProvider

public class CommonErrorView: UIView {
    public var retryAction: (() -> Void)?
    
    public static func loadView() -> CommonErrorView {
        return CommonErrorView.loadView(fromNib: "CommonErrorView", bundle: .resourceBundle(for: ResourceBundleType.commonUIResources))!
    }
    
    @IBAction func retryButtonDidTap(_ sender: Any) {
        retryAction?()
    }
    
    public override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let result = super.hitTest(point, with: event)
        if result == self {
            return nil
        }
        
        return result
    }
}
