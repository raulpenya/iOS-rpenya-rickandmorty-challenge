//
//  CustomSpinner.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CustomSpinner: View {
    @State private var isRotating = 0.0
 
    var body: some View {
        
        
        Image(systemName: "gear")
            .font(.system(size: 64))
            .rotationEffect(.degrees(isRotating))
            .onAppear {
                withAnimation(.linear(duration: 1)
                        .speed(0.1).repeatForever(autoreverses: false)) {
                    isRotating = 360.0
                }
            }
    }
}

struct CustomSpinner_Previews: PreviewProvider {
    static var previews: some View {
//        CustomSpinner(frameSize: 90).padding()
        CustomSpinner()
    }
}
