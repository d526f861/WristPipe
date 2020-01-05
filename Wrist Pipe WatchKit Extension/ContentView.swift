//
//  ContentView.swift
//  Wrist Pipe WatchKit Extension
//
//  Created by David Freeman on 12/14/19.
//  Copyright © 2019 David Freeman. All rights reserved.
//

import SwiftUI
import Foundation
import AVFoundation

struct ContentView: View {
    let defaults = UserDefaults.standard
    @State var unselectedColors = [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black]
    @State var blackText = false
    
    func getColors() {
        if let color = defaults.string(forKey: "pitchColors")
        {
            var pitchColor: Color = Color.black
            var isMulti = false
            switch(color) {
                case "red":
                    pitchColor = Color.red
                    self.blackText = true
                    break
                case "blue":
                    pitchColor = Color.blue
                    self.blackText = true
                    break
                case "green":
                    pitchColor = Color.green
                    self.blackText = true
                    break
                case "yellow":
                    pitchColor = Color.yellow
                    self.blackText = true
                    break
                case "orange":
                    pitchColor = Color.orange
                    self.blackText = true
                    break
                case "purple":
                    pitchColor = Color.purple
                    self.blackText = true
                    break
                case "black":
                    pitchColor = Color.black
                    self.blackText = false
                    break
                default:
                    isMulti = true
                    self.blackText = true
                    break
            }
            
            if(isMulti) {
                self.unselectedColors = [Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple, Color.red, Color.blue, Color.green, Color.yellow, Color.orange, Color.purple]
            } else {
                for i in 0...11 {
                    self.unselectedColors[i] = pitchColor
                }
            }
        }
    }
    
    var body: some View {
        PitchPicker(unselectedColors: $unselectedColors, blackText: $blackText, haptics: $haptics)
            .onAppear(perform: getColors)
        .navigationBarTitle(Text("Wrist Pipe"))
        .contextMenu(menuItems: {
            NavigationLink(destination: ColorPicker(unselectedColors: $unselectedColors, blackText: $blackText)
            .navigationBarTitle(Text("Pitch Color"))) {
                Button(action: {
                    print("Refresh")
                }, label: {
                    VStack{
                        Image(systemName: "paintbrush")
                            .font(.title)
                        Text("Change Pitch Color")
                    }
                })
            }
            NavigationLink(destination: Settings(haptics: $haptics)
            .navigationBarTitle(Text("Settings"))) {
                Button(action: {
                    print("Refresh")
                }, label: {
                    VStack{
                        Image(systemName: "gear")
                            .font(.title)
                        Text("Settings")
                    }
                })
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
