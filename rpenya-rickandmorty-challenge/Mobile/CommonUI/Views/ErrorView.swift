//
//  ErrorView.swift
//  rpenya-eshop-challenge
//
//  Created by raulbot on 11/3/23.
//

import SwiftUI

struct ErrorView: View {
    let errorMessage: String
    let action: (() -> Void)
    
    var body: some View {
        VStack(spacing: 0) {
            Text(NSLocalizedString("errorview_title", comment: ""))
                .modifier(TitleTextModifier())
                .padding(.top, 16)
            Text(NSLocalizedString("errorview_message", comment: ""))
                .modifier(Title3TextModifier())
                .padding(.top, 8)
            Text(errorMessage)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(.bottom, 16)
            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [1])) .frame(height: 1)
            Button(action: action) {
                Text(NSLocalizedString("refresh", comment: ""))
                    .font(.system(.title2, weight: .semibold))
                    .frame(maxWidth: .infinity, maxHeight: 40)
            }.padding([.top, .bottom], 10)
        }.frame(width: 320).background {
            RoundedRectangle(cornerRadius: 12.0)
                .fill(Colors.errorViewBackgroundColor)
                .shadow(color: Colors.shadowColor, radius: 5)
        }
    }
}
