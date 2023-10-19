//
//  UserDatesView.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 18/10/23.
//

import SwiftUI

struct UserDatesView: View {
    var body: some View {
        HStack(){
            Text("LF")
                .frame(width:50, height: 50)
                .background(Color.blue)
                .foregroundColor(Color.black)
                .cornerRadius(5)
            Text("Luciano Ferrero")
            Image(systemName: "ellipsis")
                .padding(.leading, 10)
                .font(.system(size: 20))
        }.frame(maxWidth: .infinity, alignment: .leading)
        Spacer()

    }
}

struct UserDatesView_Previews: PreviewProvider {
    static var previews: some View {
        UserDatesView()
    }
}
