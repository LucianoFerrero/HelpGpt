//
//  ContentView.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView{
            ZStack{
                if isShowing{
                    SideBarMenu(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Chat")
                    .navigationBarTitleDisplayMode(.inline)
                    .padding()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    @StateObject var viewModel = ViewModel()
    @State var prompt: String = ""
    var body: some View {

        VStack {
            ConversationView()
                .environmentObject(viewModel)
                .padding(.horizontal, 12)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
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
                        self.prompt = ""
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
        .background(.white)
    }
}
