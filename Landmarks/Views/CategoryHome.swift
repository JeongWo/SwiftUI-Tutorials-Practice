import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Heelo, world!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
