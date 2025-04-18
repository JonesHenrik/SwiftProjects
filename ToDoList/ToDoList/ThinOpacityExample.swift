//
//  ThinOpacityExample.swift
//  ToDoList
//
//  Created by Henrik Jones on 4/18/25.
//

import SwiftUI

struct ThinOpacityExample: View {
    var body: some View {
        ZStack {
            Image(.officeZoom)
                .resizable()
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.thinMaterial)
                    .frame(width: 350, height: 315)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.ultraThinMaterial)
                    .frame(width: 350, height: 315)
            }
        }
    }
}

#Preview {
    ThinOpacityExample()
}
