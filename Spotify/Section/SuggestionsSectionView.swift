//
//  SuggestionsSectionView.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct SuggestionsSectionView: View {
    var title: String
    var body: some View {
        VStack(spacing: 12) {
            SectionTitle(title: title)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(DummyData.recentlyPlayedSection) { item in
                        SuggestionCell(data: item)
                    }
                }.padding(.horizontal)
            }
        }.padding(.vertical)
    }
}

struct SuggestionsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionsSectionView(title: "Recently paying")
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
