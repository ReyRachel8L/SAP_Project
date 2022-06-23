//
//  ContentView.swift
//  SAP Gitathon
//
//  Created by LIM YEE SIN RACHEL stu on 23/6/22.
//

import SwiftUI

struct ContentView: View {
    
    let questions = [
        quiz(question: "How many times has YJ rick rolled us till date?",
             option1: "3",
             option2: "4",
             option3: "lost count",
             option4: "never gonna give u up",
             correctOption: .option4),
        
        
        quiz(question: "What do you call Zuma when he has a fever?",
             option1: "He's never sick",
             option2: "COld dog",
             option3: "hoT dog",
             option4: "Dead dog",
             correctOption: .option4),
        
        quiz(question: "Who is the best paw patrol dog?",
             option1: "rubble", option2: "ROCKY",
             option3: "Chase!!!!",
             option4: "sky :)",
             correctOption: .option4),
        
        quiz(question: "Is this a fake kahoot?",
             option1: "yes",
             option2: "no",
             option3: "absolutely yes",
             option4: "absolutely no",
             correctOption: .option4)
    ]
    
    @State var currentQuestion = 0
    @State var isPositiveAlertShown = false
    @State var isAnswerCorrect = false
    @State var correctWrong = ""
    
    var body: some View {
        
        ZStack {
            Image("PawPatrol1")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
                .opacity(0.3)
            
            
                .onTapGesture {
                    currentQuestion += 1
                    if currentQuestion == questions.count {
                        currentQuestion = 0
                    }
                    isPositiveAlertShown = true
                }
            
            
            VStack {
                ProgressView(value: Double(currentQuestion), total: Double(questions.count))
                    .padding()
                Text(questions[currentQuestion].question)
                    .padding(40)
                    .font(.system(size: 20))
                    .background(.white)
                    .foregroundColor(.black)
                
                
                HStack {
                    VStack {
                        Button {
                            print(1)
                            isPositiveAlertShown = true
                            correctWrong = "Wrong!!!! Why r u so dumb u never pay attenetion  ❌❌❌❌❌"
                        } label: {
                            Text(questions[currentQuestion].option1)
                        }
                        .frame(width: 100, height: 50)
                        .padding(20)
                        .background(.cyan)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                        Button {
                            print(2)
                            isPositiveAlertShown = true
                            correctWrong = "Wrong!!!! Why r u so dumb u never pay attenetion  ❌❌❌❌❌"
                        } label: {
                            Text(questions[currentQuestion].option2)
                        }
                        .frame(width: 100, height: 50)
                        .padding(20)
                        .background(.pink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                    }
                    
                    VStack {
                        Button {
                            print(3)
                            isPositiveAlertShown = true
                            correctWrong = "Correct YOU R SO SMART 🥰🥰🥰🥰"
                        } label: {
                            Text(questions[currentQuestion].option3)
                        }
                        .frame(width: 100, height: 50)
                        .padding(20)
                        .background(.yellow)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        Button {
                            print(4)
                            isPositiveAlertShown = true
                            correctWrong = "Wrong!!!! Why r u so dumb u never pay attenetion  ❌❌❌❌❌"
                        } label: {
                            Text(questions[currentQuestion].option4)
                        }
                        .frame(width: 100, height: 50)
                        .padding(20)
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                    }
                }
                
                .alert(correctWrong, isPresented: $isPositiveAlertShown) {
                    Button(role: .none) {
                        print("Yay!")
                        isAnswerCorrect = true
                        
                        if currentQuestion < 3 {
                            currentQuestion += 1
                        } else {
                            currentQuestion = 0
                        }
                    } label: {
                        Text("Continue => ")
                    }
                    
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
