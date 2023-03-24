//
//  WelcomeView.swift
//  Code History
//
//  Created by Jean Karel on 8/03/23.
//

import SwiftUI
//Reemplazar textview con navigationview para envolver la vista.
struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Cuánto conoces de Colombia?")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(
                      destination: GameView(),
                      label: {
                          BottomTextView(str: "Empecemos 🇨🇴")
                      })
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
