//
//  FiszkiDetailView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 05/03/2023.
//

import SwiftUI

struct FiszkiDetailView: View {
    
    var fiszki: Fiszki
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            
            Spacer()
            
            FiszkiTitleView(mockDataFiszki: fiszki)
            
            Text(fiszki.description)
                .font(.body)
                .padding()
            
            Spacer()
        }
    }
}

struct FiszkiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiDetailView(fiszki: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
