

import SwiftUI

struct Scrollling: View {
     
    var body: some View {
        ScrollView {
            VStack{
                ScrollImage(image: .bellagio)
                
                ScrollImage(image: .excalibur)
                
                ScrollImage(image: .luxor)
                
                ScrollImage(image: .paris)
                
                ScrollImage(image: .stratosphere)
                
                ScrollImage(image: .treasureisland)
                
            }.padding()
            }
    }
}




#Preview{
    Scrollling()
}
