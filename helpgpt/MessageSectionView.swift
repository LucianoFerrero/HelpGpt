//
//  MessageSectionView.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 18/10/23.
//

import SwiftUI

struct MessageSectionView: View {
    @StateObject var viewModel = ViewModel()
    @State var prompt: String = ""
    var body: some View {
        HStack{
            TextField("Escribele una pregunta a helpgpt",
                      text:$prompt,
                      axis: .vertical)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(25)
            .lineLimit(6)
            Button {
                Task{
                    self.prompt = ""
                    await viewModel.send(message: prompt)
                }
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(Color.white)
                    .frame(width: 44, height: 44)
                    .background(Color.blue)
                    .cornerRadius(22)
            }
            .padding(.leading, 8)
        }
    }
}

struct MessageSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MessageSectionView()
    }
}
