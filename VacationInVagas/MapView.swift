

import SwiftUI
import MapKit

struct MapView: View {
    var place: Place
    @State var position: MapCameraPosition
     var body: some View {
         Map(position: $position){
             Annotation (place.interested ? "Place of Interest" : "Not Interested", coordinate: place.location)
             {
                 ZStack{
                     RoundedRectangle(cornerRadius: 7).fill(.ultraThickMaterial).stroke(.secondary,lineWidth:5)
                     
                     Image(systemName: place.interested ? "face.smilling" : "hand.thumbsdown").padding(5)
                 } .onTapGesture {
                     place.interested.toggle()
                 }
             }

         }.toolbarBackground(.automatic)
    }
}




#Preview{
//    @Previewable @State var place: Place.
    MapView (place: Place.previewPlaces[2],position: .camera(MapCamera(centerCoordinate: Place.previewPlaces[2].location, distance: 1000,heading: 250,pitch: 80 )))
}
