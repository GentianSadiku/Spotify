//
//  BestOfCell.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct BestOfCell: View {
    var data: DummyData
    var body: some View {
        VStack(alignment: .leading) {
            Image(data.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180)
                .cornerRadius(3)
            Text(data.title)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .lineLimit(2)
            Text(data.subTitle ?? "")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 180, height: 250)
    }
}

struct BestOfCell_Previews: PreviewProvider {
    static var previews: some View {
        BestOfCell(data: DummyData.popularPlaylistsSection[0])
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
