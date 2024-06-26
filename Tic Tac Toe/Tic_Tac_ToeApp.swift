//
//  Tic_Tac_ToeApp.swift
//  Tic Tac Toe
//
//  Created by GHEEWALA DHARA on 25/06/24.
//

import SwiftUI

@main
struct Tic_Tac_ToeApp: App {
    
    @State private var isActive = false
    
    var body: some Scene {
        WindowGroup {
            MainView(isActive: $isActive)
        }
    }
}

struct MainView: View{
    @Binding var isActive: Bool
    
    var body: some View{
        Group{
            if isActive{
                ContentView()
            }else{
                Home()
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                            withAnimation(Animation.easeInOut(duration: 1)) {
                                self.isActive = true
                            }
                        }
                    }
            }
        }
    }
}


