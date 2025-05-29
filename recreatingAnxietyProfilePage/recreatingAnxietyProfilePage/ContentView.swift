//
//  ContentView.swift
//  recreatingAnxietyProfilePage
//
//  Created by Henrik Jones on 5/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSheet = false
    
    var body: some View {
        ZStack {
            Color(.orange)
            // this modifier lets us fill out the whole screen
            // with our color
                .ignoresSafeArea(edges: .all)
            VStack(spacing: 20) {
                Text("Anxiety")
                    .font(.largeTitle)
                    .bold()
                ZStack {
                    Circle()
                        .frame(width: 375)
                        .foregroundStyle(.imageBorder)
                    
                    Image(.anxietyInsideOut2)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500)
                        .clipShape(Circle())
                }
                    
                    
                Button("Show more details") {
                    // Show more details using modality
                    isShowingSheet.toggle()
                }
                .font(.title3)
                .padding(10)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .foregroundStyle(.white)
                .bold()
                .sheet(isPresented: $isShowingSheet) {
                    SheetView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
