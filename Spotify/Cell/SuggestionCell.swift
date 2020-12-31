//
//  SuggestionsCell.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct SuggestionCell: View {
    var data: DummyData
    var body: some View {
        VStack(alignment: .leading) {
            Image(data.imageName)
                .resizable()
                .frame(width: 130, height: 130)
                .cornerRadius(3)
            Text(data.title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .lineLimit(2)
        }
    }
}

struct SuggestionCell_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionCell(data: DummyData.recentlyPlayedSection[0])
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
