//
//  FiszkiTitlwView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 10/03/2023.
//

import SwiftUI

struct FiszkiTitleView: View {
    
    let mockDataFiszki: Fiszki
    
    var body: some View {
        VStack {
            Text(mockDataFiszki.name)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .frame(alignment: .leading)
                .minimumScaleFactor(0.5)
                .padding()
                
        }
        .preferredColorScheme(.light)
    }
}

struct FiszkiTitleView_Preview: PreviewProvider {
    static var previews: some View {
        FiszkiTitleView(mockDataFiszki: MockData.sampleFiszki)
    }
}
