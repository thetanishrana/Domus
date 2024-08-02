//
//  ExploreViewModel.swift
//  Domus
//
//  Created by Tanish Rana on 02/08/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchedLocation = ""
    private let service: ExploreService
    private var listingCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingCopy = listings
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchedLocation.lowercased() ||
            $0.state.lowercased() == searchedLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingCopy : filteredListings
    }
}
