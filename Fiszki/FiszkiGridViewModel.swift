//
//  FiszkiGridViewModel.swift
//  Fiszki
//
//  Created by Maciej Michalik on 05/03/2023.
//

import SwiftUI

final class FiszkiGridViewModel: ObservableObject {
    
    var selectedFiszka: Fiszki? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
