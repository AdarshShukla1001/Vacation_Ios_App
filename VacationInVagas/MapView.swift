//
//  PlacesList.swift
//  VacationInVagas
//
//  Created by adarsh shukla on 07/11/24.
//
import SwiftUI
import SwiftData

struct PlacesList: View {
    
    @Query(sort: \Place.name) private var places: [Place]
    
    @State private var showImage: Bool = false
    @State private var searchText : String = ""
    @State private var filteredByInterested: Bool = false
    
    
    private var predicate: Predicate<Place> {
        #Predicate<Place> {
            if !searchText.isEmpty && filteredByInterested {
                $0.name.localizedStandardContains(searchText)
                && $0.interested
            }
            else if !searchText.isEmpty {
                $0.name.localizedStandardContains(searchText)
            }
            else if filteredByInterested  {
                $0.interested
            }
            else{
                true
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List((try? places.filter(predicate)) ?? places) { place in
                HStack {
                    place.image
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                        .frame(width: 100, height: 100)
                    
                    Text(place.name)
                    Spacer()
                    if place.interested {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .padding(.trailing)
                    }
                }
            }
            .navigationTitle("Places")
            .animation(.default,value: searchText)
            .searchable(text: $searchText, prompt: "Find a Place")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showImage.toggle()
                    }) {
                        Label("Show Image", systemImage: "photo")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        withAnimation{
                            filteredByInterested.toggle()
                        }
                    }) {
                        Label("Filter", systemImage: filteredByInterested ?"star.fill" : "star")
                    }.tint( filteredByInterested ? .yellow : .blue)
                }
                
                
            }
            .sheet(isPresented: $showImage) {
                Scrolling()
            }
        }
    }
}

#Preview {
         PlacesList()
            .modelContainer(Place.preview)
 }
