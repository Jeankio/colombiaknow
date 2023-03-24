//
//  BottomTextView.swift
//  Code History
//
//  Created by Jean Karel on 11/03/23.
// Se crea con el proposito de reutilizar el recurso y no repetir el código.

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
                Spacer()
                    Text(str)
                        .font(.body)
                        .bold()
                        .padding()
                    Spacer()
                }.background(GameColor.accent)
            }
    }

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
