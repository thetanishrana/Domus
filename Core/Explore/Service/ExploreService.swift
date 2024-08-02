//
//  ExploreService.swift
//  Domus
//
//  Created by Tanish Rana on 02/05/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
