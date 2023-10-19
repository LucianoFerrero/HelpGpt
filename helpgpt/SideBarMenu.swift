//
//  SideBarMenu.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 18/10/23.
//

import SwiftUI

struct SideBarMenu: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.brown, Color.black.opacity(0.4)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                TopButtonsView(isShowing: $isShowing)
                    .padding(.leading, 11.5)
                ChatGroupView()
                    .padding(.leading, 10)
                UserDatesView()
                    .padding(.leading, 11.5)
            }
            .navigationBarHidden(true)
        }
        
    }
    
    struct SideBarMenu_Previews: PreviewProvider {
        static var previews: some View {
            SideBarMenu(isShowing: .constant(true))
        }
    }
}
