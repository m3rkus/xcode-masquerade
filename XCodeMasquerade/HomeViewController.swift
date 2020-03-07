//
//  HomeViewController.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 06.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Cocoa
import SwiftyXMLParser

final class HomeViewController: NSViewController {

    // MARK: - Private Properties
    @IBOutlet private weak var selectThemeToConvertButton: NSButton!
    @IBOutlet private weak var themeToConvertButtonHintLabel: NSTextField!
    @IBOutlet private weak var themeToConvertInfoLabel: NSTextField!
    @IBOutlet private weak var convertThemeButton: NSButton!
    @IBOutlet private weak var conversionStatusLabel: NSTextField!
    @IBOutlet private weak var conversionProgressBar: NSProgressIndicator!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override var representedObject: Any? {
        didSet {}
    }
    
    // MARK: - UI
    private func setupUI() {
        
        selectThemeToConvertButton.title = "Select theme"
        themeToConvertButtonHintLabel.stringValue = "You can select one theme or entire folder with themes"
        themeToConvertInfoLabel.stringValue = ""
        convertThemeButton.title = "Convert"
        conversionStatusLabel.stringValue = ""
        conversionProgressBar.isHidden = true
    }
    
    // MARK: - Actions
    @IBAction func tapSelectThemeToConvert(_ sender: NSButton) {
        
        let fileDialog = NSOpenPanel()
        fileDialog.title = "Choose .itermcolors files or directory"
        fileDialog.showsResizeIndicator = true;
        fileDialog.showsHiddenFiles = false;
        fileDialog.canChooseDirectories = true;
        fileDialog.canCreateDirectories = false;
        fileDialog.allowsMultipleSelection = true;
        fileDialog.allowedFileTypes = ["itermcolors"];
        
        guard fileDialog.runModal() == .OK else {
            // User clicked on "Cancel"
            return
        }
        let fileURLs = fileDialog.urls
        print("File URLs: ")
        fileURLs.forEach { print($0.path) }
    }
    
    @IBAction func tapConvertTheme(_ sender: NSButton) {
    }
}

