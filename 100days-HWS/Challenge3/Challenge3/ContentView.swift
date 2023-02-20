//
//  ContentView.swift
//  Challenge3
//
//  Created by Меньков Д.В. on 19/2/23.
//

import SwiftUI

struct Answer: Identifiable {
    let id = UUID()
    let title: String
    let isCorrect: Bool
}

struct ContentView: View {
    @FocusState private var userAnswerIsFocused: Bool
    
    @State private var currentNumber = 2
    @State private var randomNumber = 0
    
    @State private var answer = ""
    @State private var currentNumberOfQuestion = 5
    @State private var countOfQuestions = 0
    private var numbersOfQuestion = [5, 10, 15, 20]
    
    @State private var isGameStart = false
    @State private var showRestartButton = false
    @State private var userAnswers = [Answer]()
    
    var body: some View {
        NavigationView {
            Form {
                if !isGameStart {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select multiplication tables you want to practice")
                            .font(.headline)
                        
                        Stepper("Number: \(currentNumber)",
                                value: $currentNumber,
                                in: 2...12)
                    }
                    Section {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Select the number of questions:")
                                .font(.headline)
                            
                            Picker("Select the number of questions:", selection: $currentNumberOfQuestion) {
                                ForEach(numbersOfQuestion, id: \.self) {
                                    Text("\($0)")
                                }
                            }
                            .pickerStyle(.segmented)
                            .background(Color.pink)
                            .cornerRadius(8)
                        }
                    }
                    HStack {
                        Spacer()
                        Button("Start training") {
                            startGame()
                        }
                        Spacer()
                    }
                    
                } else {
                    if !showRestartButton {
                        Section {
                            HStack {
                                Text("\(currentNumber) * \(randomNumber) = ")
                                Spacer()
                                TextField("Answer", text: $answer)
//                                { isEditing in
//                                    if !isEditing {
//                                        stopEditing()
//                                    }
//
//                                }
                                
                                .keyboardType(.decimalPad)
                                .focused($userAnswerIsFocused)
                                .frame(width: 70)
                                .onSubmit {
                                    stopEditing()
                                }
                                .onTapGesture {
                                    answer = ""
                                }
                            }
                        }
                    }
                    
                    Section {
                        Text("Complete \(countOfQuestions) (\(currentNumberOfQuestion))")
                        List(userAnswers) { answer in
                            HStack {
                                AnswerImage(isCorrect: answer.isCorrect)
                                Text(answer.title)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Multiply training")
            .toolbar {
                if isGameStart {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Stop training", role: .cancel) {
                            isGameStart = false
                            showRestartButton = false
                        }
                    }
                }
                
                if showRestartButton {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Restart training?", role: .cancel) {
                            restartGame()
                        }
                    }
                }
                
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        userAnswerIsFocused = false
                    }
                }
            }
        }
    }
    
    private func restartGame() {
        showRestartButton = false
        userAnswers = []
        randomNumber = Int.random(in: 2...10)
        countOfQuestions = 0
    }
    
    private func startGame() {
        countOfQuestions = 0
        isGameStart = true
        randomNumber = Int.random(in: 2...10)
        userAnswers = []
    }
    
    private func stopEditing() {
        guard let intAnswer = Int(answer) else {
            return
        }
        
        answer = ""
        let isCorrect = (currentNumber * randomNumber) == intAnswer
        userAnswers.append(Answer(title: "\(currentNumber) * \(randomNumber) = \(intAnswer)",
                                  isCorrect: isCorrect))
        randomNumber = Int.random(in: 2...10)
        countOfQuestions += 1
        if countOfQuestions >= currentNumberOfQuestion {
            showRestartButton = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
