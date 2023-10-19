//
//  ChatGroupView.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 18/10/23.
//

import SwiftUI

struct ChatGroupView: View {
    var body: some View {
        HStack{

            VStack{
                ScrollView{
                    
                }.frame(width:240, height:600)
                    
            }
            Spacer()
        }
    }
}

struct ChatGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ChatGroupView()
    }
}
