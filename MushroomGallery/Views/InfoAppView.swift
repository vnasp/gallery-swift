//
//  InfoAppView.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 10-12-24.
//

import SwiftUI

struct InfoAppView: View {
    var body: some View {
        List {
            VStack {
                Image("mushroom-2")
                    .resizable()
                    .scaledToFit()
                
                TitleApp()
            }.frame(height: 350).padding()
                        
            Section (
                header: Text("Acerca de la App"),
                footer: HStack {
                    Spacer()
                    Text("Copyright - Todos los derechos reservados")
                    Spacer()
                }
                .padding(.vertical, 8)
            ) {
                CustomListRowView(
                    rowLabel: "Tema",
                    rowIcon: "scribble.variable",
                    rowContent: "Naturaleza",
                    rowTintColor: .green)
                CustomListRowView(
                    rowLabel: "Aplicación",
                    rowIcon: "apps.iphone",
                    rowContent: "FungiLens",
                    rowTintColor: .blue)
                CustomListRowView(
                    rowLabel: "Compatibilidad",
                    rowIcon: "info.circle",
                    rowContent: "iOS",
                    rowTintColor: .red)
                CustomListRowView(
                    rowLabel: "Tecnología",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTintColor: .orange)
                CustomListRowView(
                    rowLabel: "Versión",
                    rowIcon: "gear",
                    rowContent: "1.0",
                    rowTintColor: .brown)
                CustomListRowView(
                    rowLabel: "Desarrollador",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Valentina Muñoz",
                    rowTintColor: .indigo)
                CustomListRowView(
                    rowLabel: "Imágenes",
                    rowIcon: "camera",
                    rowTintColor: .yellow,
                    rowLinkLabel: "IGPOTY",
                    rowLinkDestination: "https://www.igpoty.com")
                    }
            }
        }
    }

#Preview {
    InfoAppView()
}
