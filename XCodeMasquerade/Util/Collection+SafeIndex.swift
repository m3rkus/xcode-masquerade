//
//  Collection+SafeIndex.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 08.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


extension Collection {
    
    /// Safe way to return element at specified index
    subscript (safe index: Index) -> Element? {
        return startIndex <= index && index < endIndex
            ? self[index]
            : nil
    }
    
}
