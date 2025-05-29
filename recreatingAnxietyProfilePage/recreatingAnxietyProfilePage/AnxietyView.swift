//
//  AnxietyView.swift
//  recreatingAnxietyProfilePage
//
//  Created by Henrik Jones on 5/29/25.
//

import SwiftUI

struct AnxietyView: View {
    var body: some View {
        // Step 1: Add an orange background
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            // Step 2: Write Anxiety title
            VStack(spacing: 30) {
                Text("Anxiety")
                    .font(.largeTitle)
                    .bold()
                
                
                // Step 3: Add an image to our screen
                ZStack {
                    Circle()
                        .frame(width: 375)
                        
                    Image(.anxiety)
                    // Step 6: Make our image a circle
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500)
                        .clipShape(Circle())
                        
                }
                
                // step 4: add show more details bubble
                Button {
                    // action goes here
                } label: {
                    // step 5: make button black
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 180, height: 30)
                            .foregroundStyle(.black)
                        Text("Show more details")
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    AnxietyView()
}
