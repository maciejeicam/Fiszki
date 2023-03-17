//
//  FiszkiDetailView.swift
//  Fiszki
//
//  Created by Maciej Michalik on 05/03/2023.
//

import SwiftUI

struct FiszkiDetailView: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.white, Color.blue],
        startPoint: .top, endPoint: .bottom)
    
    var fiszki: Fiszki
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Image("1024")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(4)
                    
                    FiszkiTitleView(mockDataFiszki: fiszki)
                }
                Text(fiszki.description)
                    .font(.title3)
                    .foregroundColor(.black)
                    .padding()
                
                Spacer()
            }
        }
        .background(backgroundGradient)
    }
}

struct FiszkiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiDetailView(fiszki: MockData.sampleFiszki, isShowingDetailView: .constant(false))
        
    }
}
