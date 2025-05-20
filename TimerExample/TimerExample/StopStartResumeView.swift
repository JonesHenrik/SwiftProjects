//
//  StopStartResumeView.swift
//  TimerExample
//
//  Created by Henrik Jones on 5/20/25.
//

import SwiftUI

struct StopStartResumeView: View {
    
    @ObservedObject var stopWatch = Stop_Watch()
    
    var body: some View {
                
        let minutes = String(format: "%02d", stopWatch.counter / 60)
        let seconds = String(format: "%02d", stopWatch.counter % 60)
        let union = minutes + " : " + seconds
        
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Button("Start") { self.stopWatch.start() }
                        .foregroundStyle(.purple)
                    Button("Stop") { self.stopWatch.stop() }
                        .foregroundStyle(.orange)
                    Button("Reset") { self.stopWatch.reset() }
                        .foregroundStyle(.yellow)
                }
                Spacer()
                Text("\(union)")
                    .foregroundStyle(.teal)
                    .font(.custom("", size: 90))
                Spacer()
            }
        }
    }
}

class Stop_Watch: ObservableObject {
    
    @Published var counter: Int = 0
    var timer = Timer()
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0,
                                                   repeats: true) { _ in
            self.counter += 1
        }
    }
    func stop() {
        self.timer.invalidate()
    }
    func reset() {
        self.counter = 0
        self.timer.invalidate()
    }
}

#Preview {
    StopStartResumeView()
}
