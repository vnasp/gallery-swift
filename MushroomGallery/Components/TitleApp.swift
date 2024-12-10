//
//  TitleApp.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 10-12-24.
//

import SwiftUI

struct TitleApp: View {
    var body: some View {
        HStack {
            Text("FUNG")
            Image(systemName: "sparkles")
            Text("LENS")
        }
        .font(.custom("Avenir Heavy", size: 40))
        .foregroundStyle(LinearGradient(
            colors: [.orange, .yellow],
            startPoint: .leading,
            endPoint: .trailing))
    }
}

#Preview {
    TitleApp()
}
