import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 16)
                
                TopSectionView(title: "Good evening")
                SuggestionsSectionView(title: "Recently played")
                BestOfSectionView(title: "Popular Albums", data: DummyData.popularAlbumSection)
                BestOfSectionView(title: "Popular Playlists", data: DummyData.popularPlaylistsSection)
                BestOfSectionView(title: "The Top Podcasts of 2020", data: DummyData.topPodcastsSection)
            }
            .padding(.bottom, 50)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3269367814, green: 0.2393824756, blue: 0.2673944831, alpha: 1)) , .black]), startPoint: .topLeading, endPoint: .center).edgesIgnoringSafeArea(.all)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
