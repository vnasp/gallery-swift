//
//  MainView.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 09-12-24.
//

import SwiftUI

struct MainView: View {
    @AppStorage("userName") var userName: String = ""
    
    @State private var titleOpacity: Double = 0
    
    @State private var isShowingSheet: Bool = false
    
    let cardHeights: [CGFloat] = imageData.indices.map { _ in CGFloat.random(in: 100...300) }

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack {
                    Text("Galeria.")
                        .font(.custom("Avenir Heavy", size: 40))
                        .fontWeight(.heavy)
                        .opacity(titleOpacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                titleOpacity = 1
                            }
                        }
                        .foregroundStyle(LinearGradient(
                            colors: [Color("ColorPurpleDark"), Color("ColorPurpleLight")],
                            startPoint: .leading,
                            endPoint: .trailing))
                    Text("\(userName), descubre algo nuevo cada día con FungiLens.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .opacity(titleOpacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.5).delay(0.5)) {
                                titleOpacity = 1.0
                            }
                        }
                }.padding()
                
                HStack(alignment: .top, spacing: 40) {
                    LazyVStack(spacing: 30) {
                        ForEach(imageData.indices.filter { $0 % 2 == 0 }, id: \.self) { index in
                            CardPhoto(imageData: imageData[index], height: cardHeights[index])
                        }
                    }
                    
                    LazyVStack(spacing: 30) {
                        ForEach(imageData.indices.filter { $0 % 2 != 0 }, id: \.self) { index in
                            CardPhoto(imageData: imageData[index], height: cardHeights[index])
                        }
                    }
                }
                .padding()
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        userName = ""
                    } label: {
                        Image(systemName: "arrow.uturn.backward")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.mint)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "info.bubble.fill")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.mint)
                    }
                    .sheet(isPresented: $isShowingSheet) {
                        InfoAppView()
                            .presentationDragIndicator(.visible)
                            .presentationDetents([.medium, .large])
                        
                    }
                }
            }
        }
    }
}

#Preview {
    MainView(userName: "Valentina")
}
