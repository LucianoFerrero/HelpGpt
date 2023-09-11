//
//  ContentView.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State var prompt: String = ""
    var body: some View {
        VStack {
            ConversationView()
                .environmentObject(viewModel)
                .padding(.horizontal, 12)
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            TypingAnimation()
                .frame(width:50, height:50)
                .alignmentGuide(HorizontalAlignment.trailing){ dimension in dimension[.trailing]
                    }
            

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
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
