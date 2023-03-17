//
//  FiszkiOgolneView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 17/03/2023.
//

import SwiftUI

struct FiszkiOgolneView: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.white, Color.blue],
        startPoint: .top, endPoint: .bottom)
    
    @StateObject var viewModel = FiszkiListViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(MockData.fiszkiOgolne) { framework in
                    NavigationLink(destination: FiszkiDetailView(fiszki: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FiszkiTitleView(mockDataFiszki: framework)
                    }
                }
            }
            .navigationTitle("Ogólne")
            .background(backgroundGradient)
            .scrollContentBackground(.hidden)
        }
        .preferredColorScheme(.light)
    }
}
struct FiszkiOgolneView_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiOgolneView()
    }
}
