//
//  ButtonItem.swift
//  rpenya-eshop-challenge
//
//  Created by raulbot on 8/3/23.
//

import Foundation

protocol ButtonItem {
    var title: String { get set }
    var isDisabled: Bool { get set }
    var action: ((ButtonItem) -> Void) { get set }
    func getTitle() -> AttributedString
}

extension ButtonItem {
    func getAttributedString(with text: String) -> AttributedString {
        var attributedString = AttributedString(title)
        attributedString.font = .title.bold()
        attributedString.foregroundColor = .white
        return attributedString
    }
}
