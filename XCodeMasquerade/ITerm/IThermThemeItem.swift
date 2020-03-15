//
//  IThermThemeItem.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 11.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Cocoa


struct IThermThemeItem: Codable {
    
    let blueRGB: Double
    let greenRGB: Double
    let redRGB: Double
    
    enum CodingKeys: String, CodingKey {
        case blueRGB = "Blue Component"
        case greenRGB = "Green Component"
        case redRGB = "Red Component"
    }
    
    var color: String {

        if let rgbColor = NSColor(
            srgbRed: CGFloat(redRGB),
            green: CGFloat(greenRGB),
            blue: CGFloat(blueRGB),
            alpha: 1).usingColorSpace(.genericRGB) {
            
            return "\(rgbColor.redComponent) \(rgbColor.greenComponent) \(rgbColor.blueComponent) 1"
        } else {
            return "\(redRGB) \(greenRGB) \(blueRGB) 1"
        }
    }
}
