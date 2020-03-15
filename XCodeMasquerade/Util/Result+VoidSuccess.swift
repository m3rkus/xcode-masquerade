//
//  Result+VoidSuccess.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 13.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


extension Result where Success == Void {
    
    static var success: Result {
        return .success(())
    }
}
