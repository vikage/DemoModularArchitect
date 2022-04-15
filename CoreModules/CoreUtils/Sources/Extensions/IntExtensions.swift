//
//  IntExtensions.swift
//
//  Created by Le Toan on 8/21/20.
//  Copyright © 2020 thanhvu. All rights reserved.
//

import Foundation

public extension Int {
    func timeString() -> String {        
        let minute = self / 60 % 60
        let second = self % 60

        // return formated string
        return String(format: "%02d:%02d", minute, second)
    }
}
