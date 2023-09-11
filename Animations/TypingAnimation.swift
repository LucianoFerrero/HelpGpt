//
//  TypingAnimation.swift
//  helpgpt
//
//  Created by Luciano Ferrero on 10/9/23.
//

import SwiftUI
import SwiftOpenAI

struct TypingAnimation: View {
    @State private var dotsVisible = false
    var body: some View {
        ZStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 10, height: 10)
                        .offset(x: -20, y: 0)
                        .opacity(dotsVisible ? 1.0 : 0.0)
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 10, height: 10)
                        .opacity(dotsVisible ? 1.0 : 0.0)
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 10, height: 10)
                        .offset(x: 20, y: 0)
                        .opacity(dotsVisible ? 1.0 : 0.0)
                }
                .onAppear() {
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                        withAnimation {
                            self.dotsVisible.toggle()
                        }
                    }
                }

    }
}

struct TypingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TypingAnimation()
    }
}
