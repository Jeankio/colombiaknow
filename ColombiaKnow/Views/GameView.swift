import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
        
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        } //zstack end
        //Corregir con NavigationView y demás
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                       isActive: .constant(viewModel.gameIsOver),
                       label: {EmptyView()})
        )
        .foregroundColor(.white)
        .toolbar(.hidden) // ocultar el back button
        //acceso al modelo de vista de question view
        .environmentObject(viewModel) //Ahora question view tiene acceso al model view
    }
    
    struct GameView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}
