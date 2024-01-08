import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    
    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map {FeatureCard(landmark: $0)})
}
