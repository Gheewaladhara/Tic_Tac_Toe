//
//  Home.swift
//  Tic Tac Toe
//
//  Created by GHEEWALA DHARA on 26/06/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
//        let darkBrown = Color(red: 101/255, green: 67/255, blue: 33/255)
        
        VStack{
            Image("tic_tac_toe")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
            Text("tic tac toe")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    Home()
}
