//
//  ContentView.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 09-12-24.
//

import SwiftUI

struct ContentView: View {
    
    // Para persistir el nombre de usuario
    @AppStorage("userName") var userName: String = ""
    
    var body: some View {
            if userName.isEmpty {
                OnBoardingView()
            } else {
                MainView()
            }
    }
}

#Preview {
    ContentView()
}
