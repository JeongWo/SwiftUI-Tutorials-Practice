import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current pag: \(currentPage)")
        }
            .aspectRatio(3 / 2, contentMode: .fit)
        }
}

#Preview {
    PageView(pages: ModelData().features.map {FeatureCard(landmark: $0)})
}
