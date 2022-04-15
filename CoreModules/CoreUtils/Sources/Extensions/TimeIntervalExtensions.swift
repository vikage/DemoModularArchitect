//
//  TimeIntervalExtensions.swift
//
//  Created by VietLV on 7/13/20.
//  Copyright © 2020 thanhvu. All rights reserved.
//

import Foundation
import AVFoundation

public extension TimeInterval {
    func toDurationString() -> String {
        let seconds: Int = Int(self) % 60
        let minutes = Int(self / 60)
        return String.init(format: "%02d:%02d", minutes, seconds)
    }
    
    func cgFloat() -> CGFloat {
        return CGFloat(self)
    }
}

public extension CMTime {
    func toDouble() -> Float64 {
        return CMTimeGetSeconds(self)
    }
}
