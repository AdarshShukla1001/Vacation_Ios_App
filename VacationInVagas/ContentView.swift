//
//  ContentView.swift
//  VacationInVagas
//
//  Created by adarsh shukla on 04/11/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Places",systemImage: "photo"){
                PlacesList()
                            .modelContainer(Place.preview)
            }
            
            Tab("Trip History",systemImage: "chart.line.uptrend.xyaxis"){
                VegasChart()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
