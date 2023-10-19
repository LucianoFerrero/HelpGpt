//
//  TopButtonsView.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 18/10/23.
//

import SwiftUI

struct TopButtonsView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing){
            Button(action:{ withAnimation(.spring()){
                isShowing.toggle()
            } }, label: {
                Image(systemName: "xmark")
                    .frame(width: 40, height:40)
                    .foregroundColor(.black)
                    .font(.system(size:28))
                    .border(Color.gray, width: 2)
                    .padding(.top, 7)
                    .padding(.trailing, 7)
                    .cornerRadius(5)
                    
            })
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "plus")
                        .padding(.trailing, 3)
                    Text("New Chat")
                        .padding(.trailing, 30)
                }
                .padding(12)
                .border(Color.gray, width: 2)
                .cornerRadius(5)
                .foregroundColor(Color.black)
                .font(.system(size:20))
                
                //            Button{
                //
                //            }label: {
                //                Image(systemName: "list.bullet")
                //            }.padding(13)
                //                .border(Color.gray, width: 2)
                //                .cornerRadius(5)
                //                .foregroundColor(Color.black)
                //                .font(.system(size:24))
                Spacer()
            }
        }
    }
}

struct TopButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        TopButtonsView(isShowing: .constant(true))
    }
}
