//
//  XcodeThemeConvertor.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 07.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


final class XcodeThemeConvertor {
    
    private let propertyListFileManager = PropertyListFileManager()
    private let itermConversionStrategy = ITermConversionStrategy()
    
    func convert(
        _ fileURLs: [URL],
        then completion: @escaping () -> Void) {
        
        DispatchQueue.background {
            for fileURL in fileURLs {
                let result = self.itermConversionStrategy.convert(fileURL)
                switch result {
                case let .success(theme):
                    guard let fileURL = self.getXCodeThemeFileURL(from: fileURL) else {
                        continue
                    }
                    self.write(
                        xcodeTeme: theme,
                        to: fileURL)
                case let .failure(error):
                    print(error)
                }
            }
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    private func write(
        xcodeTeme: XCodeTheme,
        to fileURL: URL) {
        
        let result = propertyListFileManager.write(
            model: xcodeTeme,
            to: fileURL)
        switch result {
        case .success:
            ()
        case let .failure(error):
            print(error)
        }
    }
    
    private func getXCodeThemeFileURL(from url: URL) -> URL? {
        
        let fileName = url.lastPathComponent
        guard var fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            print("Unable to get documents dir")
            return nil
        }
        fileURL.appendPathComponent(fileName)
        fileURL.deletePathExtension()
        fileURL.appendPathExtension("xccolortheme")
        print("file url: \(fileURL)")
        return fileURL
    }
}
