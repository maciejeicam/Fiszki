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
        
        ScrollView {
            VStack{
                HStack{
                    Spacer()
                    Button{
                        isShowingDetailView = false
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding()
                
                Spacer()
                
                FiszkiTitleView(mockDataFiszki: fiszki)
                
                Text(fiszki.description)
                    .font(.body)
                    .padding(2)
                    .frame(alignment: .leading)
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct FiszkiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiDetailView(fiszki: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
