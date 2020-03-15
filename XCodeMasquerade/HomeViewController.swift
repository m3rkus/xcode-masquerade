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
    
    private let xcodeThemeConvertor = XcodeThemeConvertor()
    private var fileURLs: [URL] = []
    
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
        conversionProgressBar.isIndeterminate = true
    }
    
    private func setProgressBar(isActive: Bool) {
        
        if isActive {
            conversionProgressBar.startAnimation(self)
            conversionProgressBar.isHidden = false
        } else {
            conversionProgressBar.stopAnimation(self)
            conversionProgressBar.isHidden = true
        }
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
        fileDialog.allowedFileTypes = ["itermcolors", "plist"];
        
        guard fileDialog.runModal() == .OK else {
            // User clicked on "Cancel"
            return
        }
        fileURLs = fileDialog.urls
    }
    
    @IBAction func tapConvertTheme(_ sender: NSButton) {
        
        setProgressBar(isActive: true)
        xcodeThemeConvertor.convert(fileURLs, then: {
            self.setProgressBar(isActive: false)
        })
    }
}

