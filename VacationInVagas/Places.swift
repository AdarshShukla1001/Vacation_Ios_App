//
//  ContentView.swift
//  VacationInVagas
//
//  Created by adarsh shukla on 04/11/24.
//

import SwiftUI

struct Symbols: View {
    
    @State private var shouldIBounce = false
    @State private var shouldIRotate = false

    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.pulse)
            
            Image(systemName: "airplane")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.wiggle)
            
            
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.variableColor.reversing)
            
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.bounce, value: shouldIBounce )
                .onTapGesture{
                    shouldIBounce.toggle()
                }
            
            
            Image(systemName: "cloud.sun.rain.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.gray,.yellow,.mint)
                .symbolEffect(.bounce, value: shouldIBounce )
                .onTapGesture{
                    shouldIBounce.toggle()
                }
            
            Image(systemName: "arrow.clockwise.square")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.blue.mix(with: .red, by: 0.25))
                .symbolEffect(.rotate, value: shouldIRotate )
                .onTapGesture{
                    shouldIRotate.toggle()
                 }
            
            Image(systemName: "sun.max.fill")
                .font(.largeTitle)
                .imageScale(.large)
                 .symbolEffect(.breathe)
                
             
 //            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    Symbols()
}
