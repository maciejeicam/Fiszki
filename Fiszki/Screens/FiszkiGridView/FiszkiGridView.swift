//
//  ContentView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 05/03/2023.
//

import SwiftUI

struct FiszkiGridView: View {
    
    @StateObject var viewModel = FiszkiGridViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(MockData.frameworksOgolne) { framework in
                    NavigationLink(destination: FiszkiDetailView(fiszki: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FiszkiTitleView(mockDataFiszki: framework)
                    }
                }
            }
            .navigationTitle("Pytania Egzaminacyjne")
        }
        
    }
}
    
    struct FiszkiGridView_Previews: PreviewProvider {
        static var previews: some View {
            FiszkiGridView()
        }
    }
    
    
    
