//
//  CustomSpinner.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI
import Combine

class LoadingTimer {

    let publisher = Timer.publish(every: 0.1, on: .main, in: .default)
    private var timerCancellable: Cancellable?

    func start() {
        self.timerCancellable = publisher.connect()
    }

    func cancel() {
        self.timerCancellable?.cancel()
    }
}

struct LoadingView: View {

    @State private var index = 0
    private static let max = 74

    private let images = (0...LoadingView.max).map { UIImage(named: "2a705f9140404a13e67dad0305c9f868qbRQudLp50l5ELBl-\($0).png")! }
    private var timer = LoadingTimer()

    var body: some View {
        return Image(uiImage: images[index])
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .onReceive(
                timer.publisher,
                perform: { _ in
                    self.index = self.index + 1
                    if self.index >= LoadingView.max { self.index = 0 }
                }
            )
            .onAppear { self.timer.start() }
            .onDisappear { self.timer.cancel() }
    }
}
        
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
