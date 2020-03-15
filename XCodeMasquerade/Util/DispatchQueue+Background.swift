//
//  DispatchQueue+Background.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 14.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


extension DispatchQueue {
    
    /// Performs an operation on a background thread with specified QoS
    static func background(qos: DispatchQoS.QoSClass = .utility,
                           operation: @escaping () -> Void) {
        DispatchQueue.global(qos: qos).async {
            operation()
        }
    }
}
