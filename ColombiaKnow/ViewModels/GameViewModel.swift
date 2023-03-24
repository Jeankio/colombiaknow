import SwiftUI

//1
class GameViewModel: ObservableObject {
    
    var correctGuesses: Int {
        game.guessesCount.correct
    }

    var incorrectGuesses: Int {
        game.guessesCount.incorrect
    }
    
    
    //2 published properties
    @Published private var game = Game()
    
    
    //3
    var currentQuestion: Question {
        game.currentQuestion
    }//3
    
    
    //4
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }//4
    
    //Comprobar si el usuario adivino - marcar el valor para mostrar un boton
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    // comunica el indice adivinado a game
    func makeGuesses(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    // actualiza el estado y se llamara al pulsar el boton
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }
    
} //Class
