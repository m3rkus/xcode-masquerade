//
//  IThermTheme.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 11.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


struct IThermTheme: Codable {
    
    let ansi0: IThermThemeItem
    let ansi1: IThermThemeItem
    let ansi2: IThermThemeItem
    let ansi3: IThermThemeItem
    let ansi4: IThermThemeItem
    let ansi5: IThermThemeItem
    let ansi6: IThermThemeItem
    let ansi7: IThermThemeItem
    let ansi8: IThermThemeItem
    let ansi9: IThermThemeItem
    let ansi10: IThermThemeItem
    let ansi11: IThermThemeItem
    let ansi12: IThermThemeItem
    let ansi13: IThermThemeItem
    let ansi14: IThermThemeItem
    let ansi15: IThermThemeItem
    let background: IThermThemeItem
    let cursor: IThermThemeItem
    let cursorText: IThermThemeItem
    let foreground: IThermThemeItem
    
    enum CodingKeys: String, CodingKey {
        case ansi0 = "Ansi 0 Color"
        case ansi1 = "Ansi 1 Color"
        case ansi2 = "Ansi 2 Color"
        case ansi3 = "Ansi 3 Color"
        case ansi4 = "Ansi 4 Color"
        case ansi5 = "Ansi 5 Color"
        case ansi6 = "Ansi 6 Color"
        case ansi7 = "Ansi 7 Color"
        case ansi8 = "Ansi 8 Color"
        case ansi9 = "Ansi 9 Color"
        case ansi10 = "Ansi 10 Color"
        case ansi11 = "Ansi 11 Color"
        case ansi12 = "Ansi 12 Color"
        case ansi13 = "Ansi 13 Color"
        case ansi14 = "Ansi 14 Color"
        case ansi15 = "Ansi 15 Color"
        case background = "Background Color"
        case cursor = "Cursor Color"
        case cursorText = "Cursor Text Color"
        case foreground = "Foreground Color"
    }
}
