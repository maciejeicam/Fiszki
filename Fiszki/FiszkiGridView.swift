//
//  ContentView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 05/03/2023.
//

import SwiftUI

struct FiszkiGridView: View {
    
    @StateObject var viewModel = FiszkiGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FiszkiTitleView(mockDataFiszki: framework)
                            .onTapGesture {
                                viewModel.selectedFiszka = framework
                            }
                    }.padding(2)
                    
                }.padding(2)
            }
            .navigationTitle("Fiszki")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FiszkiDetailView(fiszki: viewModel.selectedFiszka ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FiszkiGridView_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiGridView()
            .preferredColorScheme(.dark)
    }
}

struct FiszkiTitleView: View {
    
    let mockDataFiszki: Fiszki
    
    var body: some View {
        
        VStack {
            
            Text(mockDataFiszki.name)
                .frame(width: .infinity, height: .infinity, alignment: .leading)
                .font(.title)
                .fontWeight(.bold)
                .frame(alignment: .leading)
                .minimumScaleFactor(20)
        }
        .padding()
        .multilineTextAlignment(.leading)
    }
}

