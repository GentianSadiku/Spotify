//
//  SectionTitle.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(.white)
            Spacer()
        }
        .padding(.leading)
    }
}


struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle(title: "Section Title")
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}


