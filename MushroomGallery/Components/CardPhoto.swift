//
//  CardPhoto.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 10-12-24.
//

import SwiftUI

struct CardPhoto: View {
    let imageData: ImageData
    let height: CGFloat

    var body: some View {
        VStack(spacing: 5) {
            Image(imageData.image)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 180, height: height)
                .cornerRadius(20)

            Text(imageData.title.uppercased())
                .font(.caption)
                .fontWeight(.bold)
                .padding(.horizontal, 20)
                .foregroundColor(Color("ColorPurpleLight"))

            Text(imageData.description)
                .font(.caption2)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
        }
    }
}

#Preview {
    let imageData = ImageData(image: "img-gallery-1", title: "Título 1", description: "Descripción 1")
    CardPhoto(imageData: imageData, height: 150)
}
