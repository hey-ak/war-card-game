//
//  ContentView.swift
//  Shared
//
//  Created by Akshay Jha on 13/12/23.
//

import SwiftUI

struct ContentView: View {
     @State private var playerCard = "card6"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack(){
                Spacer()
                Spacer()
                Image("logo")
                  Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                Button {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if(playerRand>cpuRand){
                        playerScore+=1

                    }
                    else if(cpuRand>playerRand){
                        cpuScore+=1
                    }
                                       
               
               
                    
                    
                    
                    
                } label: {
                   Image("dealbutton")
                }

                Spacer()
                HStack(){
                    Spacer()
                    VStack(){
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                }
                    Spacer()
                    VStack(){
                    
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                }
                    Spacer()
                    

            }
                Spacer()
                      
            }
      
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewInterfaceOrientation(.portrait)
                        
    }
}
