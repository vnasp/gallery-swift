//
//  OnBoardingView.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 10-12-24.
//

import SwiftUI

struct OnBoardingView: View {
    @AppStorage("userName") var userName: String = ""

    @State private var nameInput: String = ""
    
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var imageScale: CGFloat = 0.1
    @State private var navigateToNext: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("ColorPurpleDark").edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    
                    // HEADER
                    ZStack {
                        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.1)
                        
                        Image("mushroom-1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .scaleEffect(imageScale)
                            .onAppear {
                                withAnimation(.easeIn(duration: 2)) {
                                    imageScale = 1.0
                                }
                            }
                    }.padding(.vertical, 40)
                    
                    // CONTENT
                    TitleApp()
                    
                    Text("Ingresa tu nombre o alias para entrar a la galeria.")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    TextField("Escribe tu nombre aquí...", text: $nameInput)
                        .padding()
                        .background(.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                    
                    Spacer()
                    
                    // FOOTER
                    ZStack {
                        // 1. Fondo
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                            .padding(8)
                        
                        // 2. Texto CTA
                        Text("Ingresar")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .offset(x: 20)
                        
                        // 3. Botón Deslizante
                        HStack {
                            Capsule()
                                .fill(Color(.mint))
                                .frame(width: buttonOffset + 80)
                            
                            Spacer()
                        }
                        
                        // 4. Botón >>
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(.mint)
                                Circle()
                                    .fill(.black.opacity(0.15))
                                    .padding(8)
                                Image(systemName: nameInput.isEmpty ? "lock.fill" : "chevron.right.2")
                                    .font(.system(size: 24, weight: .bold))
                            }
                            .foregroundColor(.white)
                            .frame(width: 80, height: 80, alignment: .center)
                            .offset(x: buttonOffset)
                            .gesture(
                                DragGesture()
                                    .onChanged { gesture in
                                        if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                            buttonOffset = gesture.translation.width
                                        }
                                    }
                                    .onEnded { _ in
                                        withAnimation(Animation.easeOut(duration: 0.4)) {
                                            if buttonOffset > buttonWidth / 2 {
                                                buttonOffset = buttonWidth - 80
                                                userName = nameInput
                                                navigateToNext = true
                                            } else {
                                                buttonOffset = 0
                                            }
                                        }
                                    }
                            )
                            
                            Spacer()
                        }
                        
                    } // END FOOTER
                    .frame(width: buttonWidth, height: 80)
                    .padding()
                    .disabled(nameInput.isEmpty)
                    .navigationDestination(isPresented: $navigateToNext)
                    {
                        MainView(userName: userName)
                    }
                }
            }
        }
    }
}

#Preview {
    OnBoardingView()
}
