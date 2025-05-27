//
//  ContentView.swift
//  SignDecoder
//
//  Created by Henrik Jones on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 50) {
                Text("Tap to select a sign to translate")
                    .font(.headline)
                
                ImageGalleryView()
                Spacer()
            }
            .navigationTitle("Sign Decoder")
        }
    }
}

#Preview {
    ContentView()
}
