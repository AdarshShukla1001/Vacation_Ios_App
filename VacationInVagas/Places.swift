

import SwiftUI
import SwiftData
import MapKit



@Model
class Place{
    
    #Unique<Place>([\.name,\.longitude ,\.latitude])
    @Attribute(.unique) var name:String
    var latitude:Double
    var longitude:Double
    var interested: Bool
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var image: Image{
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }
    
    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
    
    static var privewPlaces: [Place] {
        Place(name: "Bellagio", latitude: 36.1129, longitude: -115.1765, interested: true),
        Place(name: "Paris", latitude: 36.1125, longitude: -115.1707 , interested: true),
        Place(name: "Treasure", latitude: 36.1147, longitude: -115.1721 , interested: false),
        Place(name: "Paris", latitude: 36.1147, longitude: -115.1721 , interested: false),
        


    }
}
