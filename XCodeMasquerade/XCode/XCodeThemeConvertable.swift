//
//  XCodeThemeConvertable.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 13.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


protocol XCodeThemeConvertable {
    
    func convert(_ fileURL: URL) -> Result<XCodeTheme, Error>
}
