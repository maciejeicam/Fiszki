//
//  FiszkiButton.swift
//  Fiszki
//
//  Created by Maciej Michalik on 06/03/2023.
//

import SwiftUI

struct FiszkiButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct FiszkiButton_Previews: PreviewProvider {
    static var previews: some View {
        FiszkiButton(title: "Test Title")
    }
}
