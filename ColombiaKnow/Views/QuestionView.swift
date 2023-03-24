import SwiftUI

struct QuestionView: View {
    //Se conecta Q y G view con GVM
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack{
            //Había un string "1/10" se remplanza por:
            Text(question.questionText)
                .font(.callout)
                .multilineTextAlignment(.leading)
                
            Spacer()
            
            HStack {
                  ForEach(0..<question.possibleAnswers.count) { answerIndex in
                      Button(action: {
                          print("Tapped on option with text: \(question.possibleAnswers[answerIndex])")
                            viewModel.makeGuesses(atIndex: answerIndex)
                      }) {
                          ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                              .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                      .disabled(viewModel.guessWasMade) //Deshabilitar botones una vez se elija
                }
            }
            if viewModel.guessWasMade {
                  Button(action: { viewModel.displayNextScreen() }) {
                      BottomTextView(str: "Siguiente")
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
