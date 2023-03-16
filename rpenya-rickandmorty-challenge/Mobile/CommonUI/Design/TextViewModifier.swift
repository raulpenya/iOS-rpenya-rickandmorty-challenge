//
//  TextViewModifier.swift
//  rpenya-eshop-challenge
//
//  Created by raulbot on 7/3/23.
//

import SwiftUI

struct TitleLightTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title3, weight: .semibold))
            .foregroundColor(Colors.listCellTextColor)
            .lineLimit(1)
            .minimumScaleFactor(0.01)
    }
}

struct SubtitleLightTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.subheadline, weight: .semibold))
            .foregroundColor(Colors.listCellTextColor)
            .lineLimit(1)
            .minimumScaleFactor(0.01)
    }
}

struct TitleTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title, weight: .semibold))
            .foregroundColor(Colors.textColor)
            .lineLimit(2)
            .minimumScaleFactor(0.01)
    }
}

struct StatusTextModifier: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content.font(.system(.subheadline, weight: .semibold))
            .foregroundColor(color)
            .lineLimit(1)
            .minimumScaleFactor(0.01)
    }
}

struct SubheadlineTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.subheadline, weight: .semibold))
            .foregroundColor(Colors.textColor)
            .lineLimit(1)
            .minimumScaleFactor(0.01)
    }
}

struct Title2TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title2, weight: .bold))
            .foregroundColor(Colors.textColor)
            .lineLimit(2)
            .minimumScaleFactor(0.01)
    }
}

struct Title2RegularTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title2, weight: .regular))
            .foregroundColor(Colors.textColor)
            .lineLimit(1)
            .minimumScaleFactor(0.01)
    }
}

struct Title3TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title3, weight: .semibold))
            .foregroundColor(Colors.textColor)
            .minimumScaleFactor(0.01)
    }
}
