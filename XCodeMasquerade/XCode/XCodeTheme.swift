//
//  XCodeTheme.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 11.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


struct XCodeTheme: Codable {
    
    let consoleDebuggerInputTextColor: String
    let consoleDebuggerInputTextFont: String
    let consoleDebuggerOutputTextColor: String
    let consoleDebuggerOutputTextFont: String
    let consoleDebuggerPromptTextColor: String
    let consoleDebuggerPromptTextFont: String
    let consoleExectuableInputTextColor: String
    let consoleExectuableInputTextFont: String
    let consoleExectuableOutputTextColor: String
    let consoleExectuableOutputTextFont: String
    let consoleTextBackgroundColor: String
    let consoleTextInsertionPointColor: String
    let consoleTextSelectionColor: String
    let debuggerInstructionPointerColor: String
    let fontAndColorVersion: Int
    let lineSpacing: Double
    
    let markupTextBackgroundColor: String
    let markupTextBorderColor: String
    let markupTextCodeFont: String
    let markupTextEmphasisColor: String
    let markupTextEmphasisFont: String
    let markupTextInlineCodeColor: String
    let markupTextLinkColor: String
    let markupTextLinkFont: String
    let markupTextNormalColor: String
    let markupTextNormalFont: String
    let markupTextOtherHeadingColor: String
    let markupTextOtherHeadingFont: String
    let markupTextPrimaryHeadingColor: String
    let markupTextPrimaryHeadingFont: String
    let markupTextSecondaryHeadingColor: String
    let markupTextSecondaryHeadingFont: String
    let markupTextStrongColor: String
    let markupTextStrongFont: String
    let scrollbarMarkerAnalyzerColor: String
    let scrollbarMarkerBreakpointColor: String
    let scrollbarMarkerDiffColor: String
    let scrollbarMarkerDiffConflictColor: String
    let scrollbarMarkerErrorColor: String
    let scrollbarMarkerRuntimeIssueColor: String
    let scrollbarMarkerWarningColor: String
    let sourceTextBackground: String
    let sourceTextBlockDimBackgroundColor: String
    let sourceTextCurrentLineHighlightColor: String
    let sourceTextInsertionPointColor: String
    let sourceTextInvisiblesColor: String
    let sourceTextSelectionColor: String
    
    let sourceTextSyntaxColors: XCodeThemeSyntaxItems
    let sourceTextSyntaxFonts: XCodeThemeSyntaxItems
    
    enum CodingKeys: String, CodingKey {
        case consoleDebuggerInputTextColor = "DVTConsoleDebuggerInputTextColor"
        case consoleDebuggerInputTextFont = "DVTConsoleDebuggerInputTextFont"
        case consoleDebuggerOutputTextColor = "DVTConsoleDebuggerOutputTextColor"
        case consoleDebuggerOutputTextFont = "DVTConsoleDebuggerOutputTextFont"
        case consoleDebuggerPromptTextColor = "DVTConsoleDebuggerPromptTextColor"
        case consoleDebuggerPromptTextFont = "DVTConsoleDebuggerPromptTextFont"
        case consoleExectuableInputTextColor = "DVTConsoleExectuableInputTextColor"
        case consoleExectuableInputTextFont = "DVTConsoleExectuableInputTextFont"
        case consoleExectuableOutputTextColor = "DVTConsoleExectuableOutputTextColor"
        case consoleExectuableOutputTextFont = "DVTConsoleExectuableOutputTextFont"
        case consoleTextBackgroundColor = "DVTConsoleTextBackgroundColor"
        case consoleTextInsertionPointColor = "DVTConsoleTextInsertionPointColor"
        case consoleTextSelectionColor = "DVTConsoleTextSelectionColor"
        case debuggerInstructionPointerColor = "DVTDebuggerInstructionPointerColor"
        case fontAndColorVersion = "DVTFontAndColorVersion"
        case lineSpacing = "DVTLineSpacing"
        case markupTextBackgroundColor = "DVTMarkupTextBackgroundColor"
        case markupTextBorderColor = "DVTMarkupTextBorderColor"
        case markupTextCodeFont = "DVTMarkupTextCodeFont"
        case markupTextEmphasisColor = "DVTMarkupTextEmphasisColor"
        case markupTextEmphasisFont = "DVTMarkupTextEmphasisFont"
        case markupTextInlineCodeColor = "DVTMarkupTextInlineCodeColor"
        case markupTextLinkColor = "DVTMarkupTextLinkColor"
        case markupTextLinkFont = "DVTMarkupTextLinkFont"
        case markupTextNormalColor = "DVTMarkupTextNormalColor"
        case markupTextNormalFont = "DVTMarkupTextNormalFont"
        case markupTextOtherHeadingColor = "DVTMarkupTextOtherHeadingColor"
        case markupTextOtherHeadingFont = "DVTMarkupTextOtherHeadingFont"
        case markupTextPrimaryHeadingColor = "DVTMarkupTextPrimaryHeadingColor"
        case markupTextPrimaryHeadingFont = "DVTMarkupTextPrimaryHeadingFont"
        case markupTextSecondaryHeadingColor = "DVTMarkupTextSecondaryHeadingColor"
        case markupTextSecondaryHeadingFont = "DVTMarkupTextSecondaryHeadingFont"
        case markupTextStrongColor = "DVTMarkupTextStrongColor"
        case markupTextStrongFont = "DVTMarkupTextStrongFont"
        case scrollbarMarkerAnalyzerColor = "DVTScrollbarMarkerAnalyzerColor"
        case scrollbarMarkerBreakpointColor = "DVTScrollbarMarkerBreakpointColor"
        case scrollbarMarkerDiffColor = "DVTScrollbarMarkerDiffColor"
        case scrollbarMarkerDiffConflictColor = "DVTScrollbarMarkerDiffConflictColor"
        case scrollbarMarkerErrorColor = "DVTScrollbarMarkerErrorColor"
        case scrollbarMarkerRuntimeIssueColor = "DVTScrollbarMarkerRuntimeIssueColor"
        case scrollbarMarkerWarningColor = "DVTScrollbarMarkerWarningColor"
        case sourceTextBackground = "DVTSourceTextBackground"
        case sourceTextBlockDimBackgroundColor = "DVTSourceTextBlockDimBackgroundColor"
        case sourceTextCurrentLineHighlightColor = "DVTSourceTextCurrentLineHighlightColor"
        case sourceTextInsertionPointColor = "DVTSourceTextInsertionPointColor"
        case sourceTextInvisiblesColor = "DVTSourceTextInvisiblesColor"
        case sourceTextSelectionColor = "DVTSourceTextSelectionColor"
        case sourceTextSyntaxColors = "DVTSourceTextSyntaxColors"
        case sourceTextSyntaxFonts = "DVTSourceTextSyntaxFonts"
    }
}
