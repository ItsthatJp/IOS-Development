//
//  EmptyPlaceholderView.swift
//  Tabares_NewsApp
//
//  Created by Jp Tabares on 5/5/22.
//
import SwiftUI
struct EmptyPlaceholderView: View {
    let text: String
    let image: Image?
    var body: some View {
        VStack(spacing: 8) {
            Spacer()
            if let image = self.image {
                image
                    .imageScale(.large)
                    .font(.system(size: 52))
            }
            Text(text)
            Spacer()
        }
    }
}
struct EmptyPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyPlaceholderView(text: "No Bookmarks", image: Image(systemName: "bookmark"))
    }
}
