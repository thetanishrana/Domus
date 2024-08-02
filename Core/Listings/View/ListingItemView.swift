//
//  ListingItemView.swift
//  Domus
//
//  Created by Tanish Rana on 01/08/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing : Listing
    
    var body: some View {
        VStack(spacing: 8) {
            
            // Image area
            ListingImagesCarouselView(listing: listing)
                .frame(height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Listing info
            HStack (alignment: .top) {
                
                // information
                VStack (alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Text("\(listing.numberOfBedrooms) bd, \(listing.numberOfBaths) ba")
                        .foregroundStyle(.gray)
                }
                .foregroundStyle(.black)
                
                Spacer()
                
                // price and rating
                VStack (alignment: .trailing) {
                    HStack (spacing: 5)
                    {
                        Text("$\(listing.rent)")
                            .fontWeight(.semibold)
                        
                        Text("per month")
                    }
                    
                    HStack (spacing: 2) {
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(.red)
                            
                        
                        Text("\(listing.shortlists)")
                    }
                }
                .foregroundStyle(.black)
            }
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
