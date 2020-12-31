//
//  TopSectionView.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct TopSectionView: View {
    var title: String
    var gridLayout = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        VStack {
            SectionTitle(title: title)
            LazyVGrid(columns: gridLayout, spacing: 8) {
                ForEach(DummyData.topSection) { item in
                    TopSectionCell(data: item)
                }
            }
            .padding(.horizontal)
            
        }
        .padding(.vertical)
    }
}

struct TopSectionView_Previews: PreviewProvider {
    static var previews: some View {
        TopSectionView(title: "Good evening")
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
