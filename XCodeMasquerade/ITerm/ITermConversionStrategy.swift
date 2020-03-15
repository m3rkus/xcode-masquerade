//
//  ITermConversionStrategy.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 07.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


final class ITermConversionStrategy: XCodeThemeConvertable {

    private let propertyListFileManager = PropertyListFileManager()
    
    func convert(_ fileURL: URL) -> Result<XCodeTheme, Error> {
        
        let result = propertyListFileManager.read(
            from: fileURL,
            to: IThermTheme.self)
        switch result {
        case let .success(theme):
            let test = theme.background.color
            return .success(convertIthermTheme(theme))
        case let .failure(error):
            return .failure(error)
        }
    }
    
    func convertIthermTheme(_ theme: IThermTheme) -> XCodeTheme {

        return XCodeTheme(

            consoleDebuggerInputTextColor: theme.foreground.color,
            consoleDebuggerInputTextFont: Font.sanFranciscoMono(size: 15).name,
            consoleDebuggerOutputTextColor: theme.foreground.color,
            consoleDebuggerOutputTextFont: Font.sanFranciscoMono(size: 15).name,
            consoleDebuggerPromptTextColor: theme.ansi1.color,
            consoleDebuggerPromptTextFont: Font.sanFranciscoMono(size: 15).name,
            consoleExectuableInputTextColor: theme.foreground.color,
            consoleExectuableInputTextFont: Font.sanFranciscoMono(size: 15).name,
            consoleExectuableOutputTextColor: theme.foreground.color,
            consoleExectuableOutputTextFont: Font.sanFranciscoMono(size: 15).name,
            consoleTextBackgroundColor: theme.background.color,
            consoleTextInsertionPointColor: theme.ansi1.color,
            consoleTextSelectionColor: theme.ansi7.color,
            debuggerInstructionPointerColor: theme.ansi1.color,

            fontAndColorVersion: 1,
            lineSpacing: 1,

            markupTextBackgroundColor: theme.foreground.color,
            markupTextBorderColor: theme.foreground.color,
            markupTextCodeFont: Font.sanFranciscoMono(size: 10).name,
            markupTextEmphasisColor: theme.foreground.color,
            markupTextEmphasisFont: Font.appleSystemItalic(size: 10).name,
            markupTextInlineCodeColor: theme.foreground.color,
            markupTextLinkColor: theme.foreground.color,
            markupTextLinkFont: Font.appleSystem(size: 10).name,
            markupTextNormalColor: theme.foreground.color,
            markupTextNormalFont: Font.appleSystem(size: 10).name,
            markupTextOtherHeadingColor: theme.foreground.color,
            markupTextOtherHeadingFont: Font.appleSystem(size: 14).name,
            markupTextPrimaryHeadingColor: theme.foreground.color,
            markupTextPrimaryHeadingFont: Font.sanFrancisco(size: 24).name,
            markupTextSecondaryHeadingColor: theme.foreground.color,
            markupTextSecondaryHeadingFont: Font.appleSystem(size: 18).name,
            markupTextStrongColor: theme.foreground.color,
            markupTextStrongFont: Font.appleSystemBold(size: 10).name,

            scrollbarMarkerAnalyzerColor: theme.ansi5.color,
            scrollbarMarkerBreakpointColor: theme.ansi5.color,
            scrollbarMarkerDiffColor: theme.ansi7.color,
            scrollbarMarkerDiffConflictColor: theme.ansi1.color,
            scrollbarMarkerErrorColor: theme.ansi1.color,
            scrollbarMarkerRuntimeIssueColor: theme.ansi1.color,
            scrollbarMarkerWarningColor: theme.ansi3.color,

            sourceTextBackground: theme.background.color,
            sourceTextBlockDimBackgroundColor: theme.ansi1.color,
            sourceTextCurrentLineHighlightColor: theme.background.color,
            sourceTextInsertionPointColor: theme.ansi1.color,
            sourceTextInvisiblesColor: theme.foreground.color,
            sourceTextSelectionColor: theme.ansi7.color,
            sourceTextSyntaxColors: XCodeThemeSyntaxItems(
                attribute: theme.ansi2.color,
                character: theme.ansi2.color,
                comment: theme.ansi8.color,
                commentDoc: theme.ansi8.color,
                commentDocKeyword: theme.ansi8.color,
                declarationOther: theme.ansi5.color,
                declarationType: theme.ansi5.color,
                identifierClass: theme.ansi6.color,
                identifierClassSystem: theme.ansi6.color,
                identifierConstant: theme.ansi7.color,
                identifierConstantSystem: theme.ansi7.color,
                identifierFunction: theme.ansi5.color,
                identifierFunctionSystem: theme.ansi5.color,
                identifierMacro: theme.ansi2.color,
                identifierMacroSystem: theme.ansi2.color,
                identifierType: theme.ansi6.color,
                identifierTypeSystem: theme.ansi6.color,
                identifierVariable: theme.ansi7.color,
                identifierVariableSystem: theme.ansi7.color,
                keyword: theme.ansi4.color,
                mark: theme.ansi8.color,
                markupCode: theme.ansi2.color,
                number: theme.ansi2.color,
                plain: theme.foreground.color,
                preprocessor: theme.ansi2.color,
                string: theme.ansi2.color,
                url: theme.ansi2.color),
            sourceTextSyntaxFonts: XCodeThemeSyntaxItems(
                attribute: Font.sanFranciscoMono(size: 15).name,
                character: Font.sanFranciscoMono(size: 15).name,
                comment: Font.sanFranciscoMono(size: 15).name,
                commentDoc: Font.sanFranciscoMono(size: 15).name,
                commentDocKeyword: Font.sanFranciscoMono(size: 15).name,
                declarationOther: Font.sanFranciscoMono(size: 15).name,
                declarationType: Font.sanFranciscoMono(size: 15).name,
                identifierClass: Font.sanFranciscoMono(size: 15).name,
                identifierClassSystem: Font.sanFranciscoMono(size: 15).name,
                identifierConstant: Font.sanFranciscoMono(size: 15).name,
                identifierConstantSystem: Font.sanFranciscoMono(size: 15).name,
                identifierFunction: Font.sanFranciscoMono(size: 15).name,
                identifierFunctionSystem: Font.sanFranciscoMono(size: 15).name,
                identifierMacro: Font.sanFranciscoMono(size: 15).name,
                identifierMacroSystem: Font.sanFranciscoMono(size: 15).name,
                identifierType: Font.sanFranciscoMono(size: 15).name,
                identifierTypeSystem: Font.sanFranciscoMono(size: 15).name,
                identifierVariable: Font.sanFranciscoMono(size: 15).name,
                identifierVariableSystem: Font.sanFranciscoMono(size: 15).name,
                keyword: Font.sanFranciscoMono(size: 15).name,
                mark: Font.sanFranciscoMono(size: 15).name,
                markupCode: Font.sanFranciscoMono(size: 15).name,
                number: Font.sanFranciscoMono(size: 15).name,
                plain: Font.sanFranciscoMono(size: 15).name,
                preprocessor: Font.sanFranciscoMono(size: 15).name,
                string: Font.sanFranciscoMono(size: 15).name,
                url: Font.sanFranciscoMono(size: 15).name)
        )
    }
}
