//===============================================
//  PROGRAMMER: Raidel Almeida
//  PANTHER ID: 3932877
//
//  CLASS:      COP4655
//  SECTION:    RVCC 1245
//  SEMESTER:   SUMMER 2024
//
//  CERTIFICATION:  I certify that this work is my own and that
//  none of it is the work of any other person
//===============================================

import SwiftUI

struct ContentView: View {
    @State private var randomNumber = 0
    @State private var ladybugScore = 0
    @State private var antScore = 0
    @State private var numberOfTimesPlayed = 0
    @State private var ladybugRandomNumber = 0
    @State private var antRandomNumber = 0

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Random Number").frame(width: 140, height: 50, alignment: .center)
                    Text("\(ladybugRandomNumber)")
                    Image(systemName: "ladybug.fill").padding(.all).scaleEffect(3.0)
                    Text("\(ladybugScore)").font(.largeTitle).fontWeight(.black).frame(width: 100, height: 100, alignment: .center)
                }
                Spacer()
                VStack {
                    Text("Random Number").frame(width: 140, height: 50, alignment: .center)
                    Text("\(antRandomNumber)")
                    Image(systemName: "ant.fill").padding(.all).scaleEffect(3.0)
                    Text("\(antScore)").font(.largeTitle).fontWeight(.black).frame(width: 100, height: 100, alignment: .center)
                }
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    randomNumber = Int.random(in: 1...999)
                    ladybugRandomNumber = Int.random(in: 1...999)
                    antRandomNumber = Int.random(in: 1...999)
                    numberOfTimesPlayed += 1

                    if ladybugRandomNumber > randomNumber {
                        ladybugScore += 1
                    } else if antRandomNumber > randomNumber {
                        antScore += 1
                    }
                }) {
                    Image("PlayButton").resizable().aspectRatio(contentMode: .fit).frame(width: 120)
                }
                Spacer()
            }
            Text("Game Random: \(randomNumber)")
            HStack {
                Image("\(randomNumber / 100)")
                Image("\((randomNumber % 100) / 10)")
                Image("\(randomNumber % 10)")
            }
            Spacer()
            Text("Number of times played: \(numberOfTimesPlayed)")
        }
            .padding()
    }
}
