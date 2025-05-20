//
//  ContentView.swift
//  TimerExample
//
//  Created by Henrik Jones on 5/20/25.
//

import SwiftUI

struct ContentView: View {
    @State var start = Date.now
    @State var timeElapsed: Int = 0
    
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Time elapsed: \(timeElapsed) seconds")
                .onReceive(timer) { firedDate in
                    print("timer fired")
                    timeElapsed = Int(firedDate.timeIntervalSince(start))
                }
            HStack {
                Button("Pause") {
                    timer.upstream.connect().cancel()
                }
                Button("Resume") {
                    // still counts time when on pause
                    timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
                }
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
