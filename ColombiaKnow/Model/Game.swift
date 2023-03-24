//
//  Game.swift
//  Code History
//
//  Created by Jean Karel on 3/03/23.
//

import Foundation

struct Game {
    private(set) var currentQuestionIndex = 0
    //guesses diccionario
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    // propiedad que itere el guesses diccionario y calcule el número total de conjeturas.
    var guessesCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (quesion, guessedIndex) in guesses {
            if quesion.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect -= 1
            }
        }
        return count
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
            guesses[currentQuestion] = index
        }
    //Devuelve el numero de preguntas
    var numberOfQuestions: Int {
        questions.count
    }
    // Devuelve la pregunta actual
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    mutating func updateGameStatus(){
        if currentQuestionIndex < questions.count - 1 {
           currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
