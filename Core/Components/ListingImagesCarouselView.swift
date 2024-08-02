//
//  ListingImagesCarouselView.swift
//  Domus
//
//  Created by Tanish Rana on 01/05/24.
//

import SwiftUI

struct ListingImagesCarouselView: View {
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) {image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImagesCarouselView(listing: DeveloperPreview.shared.listings[0])
}
