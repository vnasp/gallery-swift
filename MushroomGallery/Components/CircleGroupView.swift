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
        
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 240, height: 240, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 240, height: 240, alignment: .center)
        }
    }
}

#Preview {
    ZStack {
        Color("ColorPurpleDark")
            .ignoresSafeArea(.all)
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
