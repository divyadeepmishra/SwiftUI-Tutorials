
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person"){
                FriendList()
            }
            Tab("Movies", systemImage: "film.stack"){
                FilteredMovieList()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}

