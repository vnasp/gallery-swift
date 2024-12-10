//
//  CardPhoto.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 10-12-24.
//

import SwiftUI

struct CardPhoto: View {
    let index: Int
    let height: CGFloat
    
    var body: some View {
        VStack(spacing: 5) {
            Image("img-gallery-\(index)")
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: height)
                .cornerRadius(20)
            
            Text("Fotografía \(index)".uppercased())
                .font(.caption)
                .fontWeight(.bold)
                .padding(.horizontal, 20)
                .foregroundColor(Color("ColorPurpleLight"))
            
            Text("Descripción de la fotografía \(index).")
                .font(.caption2)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
        }
    }
}


#Preview {
        CardPhoto(index: 2, height: 150)
}
