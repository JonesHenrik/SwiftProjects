//
//  TranslationView.swift
//  SignDecoder
//
//  Created by Henrik Jones on 5/27/25.
//

import SwiftUI
import Translation

struct TranslationView: View {
    var text: String
    @State private var showingTranslation = false
    var body: some View {
        VStack {
            Text("Identified Text")
                .font(.subheadline.bold())
                .textCase(.uppercase)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Text(text)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .topLeading)
                .padding()
                .background(Color(white: 0.9))
            
            Button {
                showingTranslation = true
            } label: {
                Text("Translate")
            }
        }
    }
}

#Preview {
    TranslationView(text: "Caution, falling rocks")
}
