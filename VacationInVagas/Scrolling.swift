

import SwiftUI

struct Scrollling: View {
    let image:ImageResource
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .scrollTransition{ content, phase in content.scaleEffect(phase.isIdentity ? 1 : 0.5)
                    .opacity(phase.isIdentity ? 1: 0.5)
                
            }
    }
}




#Preview{
    ScrollImage(image:.bellagio)
}
