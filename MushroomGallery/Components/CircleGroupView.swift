//
//  ContentView.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 09-12-24.
//

import SwiftUI

struct CircleGroupView: View {
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
            ZStack {
                Circle()
                    .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                Circle()
                    .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
            }
            .frame(width: 250, height: 300)
            .blur(radius: isAnimating ? 5 : 10)
        }
    }

#Preview {
    ZStack {
        Color("ColorPurpleDark")
            .ignoresSafeArea(.all)
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
