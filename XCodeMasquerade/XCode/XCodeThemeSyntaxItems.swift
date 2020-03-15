//
//  XCodeThemeSyntaxItems.swift
//  XCodeMasquerade
//
//  Created by Roman Anistratenko on 13.03.2020.
//  Copyright © 2020 m3rk. All rights reserved.
//

import Foundation


struct XCodeThemeSyntaxItems: Codable {
    
    let attribute: String
    let character: String
    let comment: String
    let commentDoc: String
    let commentDocKeyword: String
    let declarationOther: String
    let declarationType: String
    let identifierClass: String
    let identifierClassSystem: String
    let identifierConstant: String
    let identifierConstantSystem: String
    let identifierFunction: String
    let identifierFunctionSystem: String
    let identifierMacro: String
    let identifierMacroSystem: String
    let identifierType: String
    let identifierTypeSystem: String
    let identifierVariable: String
    let identifierVariableSystem: String
    let keyword: String
    let mark: String
    let markupCode: String
    let number: String
    let plain: String
    let preprocessor: String
    let string: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        
        case attribute = "xcode.syntax.attribute"
        case character = "xcode.syntax.character"
        case comment = "xcode.syntax.comment"
        case commentDoc = "xcode.syntax.comment.doc"
        case commentDocKeyword = "xcode.syntax.comment.doc.keyword"
        case declarationOther = "xcode.syntax.declaration.other"
        case declarationType = "xcode.syntax.declaration.type"
        case identifierClass = "xcode.syntax.identifier.class"
        case identifierClassSystem = "xcode.syntax.identifier.class.system"
        case identifierConstant = "xcode.syntax.identifier.constant"
        case identifierConstantSystem = "xcode.syntax.identifier.constant.system"
        case identifierFunction = "xcode.syntax.identifier.function"
        case identifierFunctionSystem = "xcode.syntax.identifier.function.system"
        case identifierMacro = "xcode.syntax.identifier.macro"
        case identifierMacroSystem = "xcode.syntax.identifier.macro.system"
        case identifierType = "xcode.syntax.identifier.type"
        case identifierTypeSystem = "xcode.syntax.identifier.type.system"
        case identifierVariable = "xcode.syntax.identifier.variable"
        case identifierVariableSystem = "xcode.syntax.identifier.variable.system"
        case keyword = "xcode.syntax.keyword"
        case mark = "xcode.syntax.mark"
        case markupCode = "xcode.syntax.markup.code"
        case number = "xcode.syntax.number"
        case plain = "xcode.syntax.plain"
        case preprocessor = "xcode.syntax.preprocessor"
        case string = "xcode.syntax.string"
        case url = "xcode.syntax.url"
    }
}
