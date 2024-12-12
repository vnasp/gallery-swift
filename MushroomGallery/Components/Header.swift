//
//  Header.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 12-12-24.
//

import SwiftUI

struct Header: View {
    
    @State private var imageScale: CGFloat = 0.1
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                // Fondo circular
                CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.1)
                
                // Imagen central
                Image("mushroom-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .scaleEffect(imageScale)
                    .onAppear {
                        withAnimation(.easeIn(duration: 2)) {
                            imageScale = 1.0
                        }
                    }.padding(.top, 20)
                
                // Esporas
                ForEach(0..<10, id: \.self) { index in
                    Circle()
                        .fill(Color.white.opacity(0.2))
                        .frame(width: 15, height: 15)
                        .offset(
                            x: CGFloat.random(in: -125...125),
                            y: CGFloat.random(in: -125...125)
                        )
                        .scaleEffect(CGFloat.random(in: 0.2...1))
                        .animation(
                            .easeInOut(duration: Double.random(in: 2...4))
                            .repeatForever(autoreverses: true),
                            value: imageScale
                        )
                }
            }
            
            // Título
            HStack {
                Text("FUNG")
                Image(systemName: "sparkles")
                Text("LENS")
            }
            .font(.custom("Avenir Heavy", size: 38))
            .foregroundStyle(LinearGradient(
                colors: [.orange, .yellow],
                startPoint: .leading,
                endPoint: .trailing))
        }
        .padding(.vertical, 20)
    }
}

#Preview {
    ZStack {
        Color("ColorPurpleDark")
            .ignoresSafeArea(.all)
        Header()
    }
}
