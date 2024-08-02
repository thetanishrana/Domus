//
//  ListingDetailView.swift
//  Domus
//
//  Created by Tanish Rana on 01/05/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    @State private var cameraPosition: MapCameraPosition
    
    init(listing: Listing) {
        self.listing = listing
        
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        ScrollView {
            ZStack (alignment: .topLeading){
                ListingImagesCarouselView(listing: listing)
                    .frame(height: 350)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(.vertical, 64)
                        .padding(.horizontal, 32)
                }
            }
            
            VStack (alignment: .leading, spacing: 5) {
                HStack {
                    Text("\(listing.title)")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    HStack (spacing: 2) {
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(.black)
                        
                        Text("\(listing.shortlists)")
                    }
                }
                
                HStack (spacing: 2) {
                    Image(systemName: "location.fill")
                    
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.secondary)
                .font(.footnote)
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            VStack (alignment: .leading, spacing: 5) {
                Text("About the property")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 10) {
                        VStack (alignment: .center, spacing: 5) {
                            Image(systemName: "square.stack.3d.up")
                            
                            Text("\(listing.footage) sq. ft.")
                        }
                        .frame(width: 140, height: 80)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.gray)
                        }
                        
                        VStack (alignment: .center, spacing: 5) {
                            Image(systemName: "bed.double")
                                .padding(.vertical, 3)
                            
                            Text("\(listing.numberOfBedrooms) bedroom")
                        }
                        .frame(width: 140, height: 80)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.gray)
                        }
                        
                        VStack (alignment: .center, spacing: 5) {
                            Image(systemName: "toilet")
                            
                            Text("\(listing.numberOfBaths) bath")
                        }
                        .frame(width: 140, height: 80)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.gray)
                        }
                    }
                    .font(.headline)
                    .padding(.vertical)
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Explore the locality")
                    .font(.headline)
                
                Map(position: $cameraPosition)
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
            Divider()
            
            VStack (alignment: .leading, spacing: 16) {
                Text("Key Features")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ForEach(listing.keyFeatures) { key in
                    HStack {
                        Image(systemName: key.imageName)
                            .frame(width: 32)
                            .fontWeight(.semibold)
                        
                        Text(key.title)
                            .font(.footnote)
                        
                        Spacer()
                    }
                    
                }
                
               
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack (alignment: .leading) {
                        HStack (spacing: 4){
                            Text("$\(listing.rent)")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("per month")
                                .font(.footnote)
                        }

                        Text("3 month deposit")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Rent")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .frame(width: 140, height: 40)
                            .background(.red)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
