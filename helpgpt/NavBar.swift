//
//  NavBar.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 18/10/23.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(.white)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationBarItems(leading: Button(action: {
                print("Debug: show menu here...")
            }, label: {
                Image(systemName: "list.bullet")
                    .foregroundColor(.black)
            }))
            .navigationTitle("Chat")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
