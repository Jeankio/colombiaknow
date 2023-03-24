//
//  GameColor.swift
//  Code History
//
//  Created by Jean Karel on 11/03/23.

// Se creó con el propósito de reusar los colores y no tener que repetir los colores (Código) en todas las pantallas de la app.

import SwiftUI

struct GameColor {
    static let main = Color(red: 20/255, green: 28/255, blue: 58/255)
    static let accent = Color(red: 48/255, green: 105/255, blue: 240/255)
    static let correctGuess = Color.green
    static let incorrectGuess = Color.red
}

