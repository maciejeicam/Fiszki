//
//  FiszkiTabView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 17/03/2023.
//

import SwiftUI

struct FiszkiTabView: View {
    
    var body: some View {
        
        TabView {
            FiszkiOgolneView()
                .tabItem {
                    Text("Ogólne")
                        .foregroundColor(.black)
                    Image(systemName: "desktopcomputer")
                }
            FiszkiSpecjalizacjaView()
                .tabItem {
                    Text("GameDev")
                        .foregroundColor(.black)
                    Image(systemName: "gamecontroller")
                }
        }
        .preferredColorScheme(.light)
    }
}

struct FiszkiTabView_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiTabView()
    }
}
