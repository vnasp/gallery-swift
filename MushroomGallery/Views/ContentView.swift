//
//  ContentView.swift
//  MushroomGallery
//
//  Created by Valentina Muñoz on 09-12-24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("userName") var userName: String = ""
    
    var body: some View {
        ZStack {
            if userName.isEmpty {
                OnBoardingView()
            } else {
                MainView()
            }
        }
    }
}

#Preview {
    ContentView()
}
