//
//  FiszkiSpecjalizacjaView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 17/03/2023.
//

import SwiftUI

struct FiszkiSpecjalizacjaView: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.white, Color.blue],
        startPoint: .top, endPoint: .bottom)
    
    @StateObject var viewModel = FiszkiListViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(MockData.fiszkiSpecjalizacja) { framework in
                    NavigationLink(destination: FiszkiDetailView(fiszki: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FiszkiTitleView(mockDataFiszki: framework)
                    }
                }
            }
            .navigationTitle("Specjalizacyjne")
            .background(backgroundGradient)
            .scrollContentBackground(.hidden)
            }
        .preferredColorScheme(.light)
        }
        
    }
struct FiszkiSpecjalizacjaView_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiSpecjalizacjaView()
    }
}
