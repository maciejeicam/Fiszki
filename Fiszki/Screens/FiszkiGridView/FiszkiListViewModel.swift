//
//  FiszkiGridViewModel.swift
//  Fiszki
//
//  Created by Maciej Michalik on 05/03/2023.
//

import SwiftUI

final class FiszkiListViewModel: ObservableObject {
    
    var selectedFiszka: Fiszki? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    let columns: [GridItem] = [GridItem(.flexible())]
}
