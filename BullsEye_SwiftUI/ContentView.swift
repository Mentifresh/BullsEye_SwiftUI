//
//  ContentView.swift
//  BullsEye_SwiftUI
//
//  Created by Dani Kilders on 06.09.20.
//  Copyright © 2020 danielkilders. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Color(red: rTarget, green: gTarget, blue: bTarget)
                    Text("Match this color!")
                }
                VStack {
                    Color(red: rGuess, green: gGuess, blue: bGuess)
                    Text("R: \(Int(rGuess * 255.0))  G: \(Int(gGuess * 255.0))  B: \(Int(bGuess * 255.0))")
                }
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Hit Me!")
            }
            HStack {
                Text("0").foregroundColor(.red)
                Slider(value: $rGuess)
                Text("255").foregroundColor(.red)
            }.padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            rGuess: 0.5,
            gGuess: 0.5,
            bGuess: 0.5
        ).previewLayout(.fixed(width: 568, height: 320))
    }
}
