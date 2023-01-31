//
//  ContentView.swift
//  Challenge2
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

enum GameVariant: String, CaseIterable {
    case rock
    case scissor
    case paper
}

struct ContentView: View {
    
    @State private var compChoose: GameVariant = .rock
    @State private var showingAlert = false
    @State private var needToShowCompChoose = false
    @State private var titleAlertText = ""
    @State private var isUserWin = false
    @State private var score = 0
    @State private var compColor = Color.black
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.yellow, .blue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                Spacer()
                VStack {
                    ChoiceText(text: "Computer choose:")
                    
                    CompImage(currentImage: needToShowCompChoose ? compChoose.rawValue : "questions",
                              color: compColor)
                }
                Spacer()
                VStack {
                    
                    ChoiceText(text: "Your choice:")
                    
                    HStack(spacing: 20) {
                        ChooseImage(currentImage: .rock) {
                            userChoose(.rock)
                        }
                        ChooseImage(currentImage: .scissor) {
                            userChoose(.scissor)
                        }
                        ChooseImage(currentImage: .paper) {
                            userChoose(.paper)
                        }
                    }
                }
                
                RestartButton(action: restartGame)
                
                Text("Your score: \(score)")
                    .font(.largeTitle.bold())
                
                Spacer()
            }
            .alert(titleAlertText, isPresented: $showingAlert) {
                Button("Continue") {
                    startGame()
                }
            }
        }
    }
    
    private func restartGame() {
        score = 0
        startGame()
    }
    
    private func startGame() {
        compChoose = .allCases.randomElement() ?? .rock
        needToShowCompChoose = false
        compColor = .black
    }
    
    private func userChoose(_ userChoose: GameVariant) {
        showingAlert = true
        needToShowCompChoose = true
        isUserWin = false
        switch (userChoose, compChoose) {
        case (.rock, .paper):
            titleAlertText = "You're Lose!"
        case (.rock, .scissor):
            titleAlertText = "You're Win!"
            isUserWin = true
        case (.paper, .scissor):
            titleAlertText = "You're Lose!"
        case (.paper, .rock):
            titleAlertText = "You're Win!"
            isUserWin = true
        case (.scissor, .rock):
            titleAlertText = "You're Lose!"
        case (.scissor, .paper):
            titleAlertText = "You're Win!"
            isUserWin = true
        default:
            titleAlertText = "A tie"
            return
        }
        score += isUserWin ? 1 : -1
        compColor = isUserWin ? .green : .red
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
