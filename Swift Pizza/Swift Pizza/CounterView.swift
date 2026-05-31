import SwiftUI
import Combine


@Observable
class GameScore: ObservableObject {
    var score = 0
    var pieces = 0
}

struct CounterView: View {
    @State var gameScore = GameScore()
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Add score") {
                    gameScore.score += 1
                }
                .buttonStyle(.bordered)
                .padding()
                Button("Add pieces") {
                    gameScore.pieces += 1
                }
                .buttonStyle(.bordered)
                .padding()
                
                NavigationLink {
                    ScoreView()
                } label: {
                    Text("View Score...")
                        .padding()
                }
            }
        }
        .environment(gameScore)
    }
}

struct ScoreView: View {
    @Environment(GameScore.self) var gameScore
    
    var body: some View {
        Text("The score is \(gameScore.score)!")
        Text("The piece count is \(gameScore.pieces)!")
    }
}

#Preview {
    CounterView()
}
