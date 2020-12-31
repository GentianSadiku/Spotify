//
//  TopSectionCell.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct TopSectionCell: View {
    var data: DummyData
    var body: some View {
        HStack {
            Image(data.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(data.title)
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(.trailing)
        .background(Color.white.opacity(0.085))
        .cornerRadius(8)
    }
}

struct TopSectionCell_Previews: PreviewProvider {
    static var previews: some View {
        TopSectionCell(data: DummyData.topSection[0])
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
