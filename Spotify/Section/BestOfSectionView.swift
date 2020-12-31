//
//  BestOfSectionView.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct BestOfSectionView: View {
    var title: String
    var data: [DummyData]
    var body: some View {
        VStack(spacing: 16){
            SectionTitle(title: title)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(data) { item in
                        BestOfCell(data: item)
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical)
    }
}

struct BestOfSectionView_Previews: PreviewProvider {
    static var previews: some View {
        BestOfSectionView(title: "The Top Podcast of 2020", data: DummyData.popularAlbumSection)
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
