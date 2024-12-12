//
//  InfoAppView.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 10-12-24.
//

import SwiftUI

struct InfoAppView: View {
    var body: some View {
        ZStack {
            Color("ColorPurpleDark").ignoresSafeArea()
            VStack {
                Header()
                    .frame(height: 220)
                    .scaleEffect(0.5)
                
                List {
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
                .cornerRadius(10)
            }.padding(.vertical, 10)
        }
    }
}
#Preview {
    InfoAppView()
}
