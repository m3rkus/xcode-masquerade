//
//  Font.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 13.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


enum Font {
    
    case appleSystem(size: Double)
    case appleSystemItalic(size: Double)
    case appleSystemBold(size: Double)
    case sanFrancisco(size: Double)
    case sanFranciscoMono(size: Double)
    
    var name: String {
        
        switch self {
        case let .appleSystem(size):
            return ".AppleSystemUIFont - \(size)"
        case let .appleSystemItalic(size):
            return ".AppleSystemUIFontItalic - \(size)"
        case let .appleSystemBold(size):
            return ".AppleSystemUIFontBold - \(size)"
        case let .sanFrancisco(size):
            return "SFNS-Regular - \(size)"
        case let .sanFranciscoMono(size):
            return "SFMono-Regular - \(size)"
        }
    }
}
