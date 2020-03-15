//
//  PropertyListFileManager.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 13.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation

final class PropertyListFileManager {
    
    // MARK: - Public Proeprties
    var fileFormat: PropertyListSerialization.PropertyListFormat = .xml
    
    // MARK: - Private Properties
    private lazy var decoder: PropertyListDecoder = {
        PropertyListDecoder()
    }()
    private lazy var encoder: PropertyListEncoder = {
        PropertyListEncoder()
    }()

    // MARK: - Public Methods
    func read<T: Decodable>(
        from url: URL,
        to model: T.Type) -> Result<T, Error> {
        
        do {
            let fileData = try Data(contentsOf: url)
            let model = try decoder.decode(
                T.self,
                from: fileData,
                format: &fileFormat)
            return .success(model)
        } catch {
            return .failure(error)
        }
    }
    
    func write<T: Encodable>(
        model: T,
        to url: URL) -> Result<Void, Error> {
        
        do {
            encoder.outputFormat = fileFormat
            let data = try encoder.encode(model)
            try data.write(to: url)
            return .success
        } catch {
            return .failure(error)
        }
    }
}
