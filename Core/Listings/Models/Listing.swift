//
//  Listing.swift
//  Domus
//
//  Created by Tanish Rana on 01/08/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUID: String
    let ownerName: String
    let footage: Int
    let numberOfBedrooms: Int
    let numberOfBaths: Int
    var rent: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    let shortlists: Int
    var keyFeatures: [ListingFeatures]
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case WiFi
    case AirConditioning
    case PetFriendly
    case Parking
    case AlarmSystem
    
    var title: String {
        switch self {
        case .WiFi: return "Wi-Fi"
        case .AirConditioning: return "Air Conditioning"
        case .PetFriendly: return "Pet Friendly"
        case .Parking: return "Parking"
        case .AlarmSystem: return "Alarm System"
        }
    }
    
    var imageName: String {
        switch self {
        case .WiFi: return "wifi"
        case .AirConditioning: return "wind"
        case .PetFriendly: return "dog"
        case .Parking: return "p.circle"
        case .AlarmSystem: return "shield.lefthalf.filled.badge.checkmark"
        }
    }
    
    var id: Int { return self.rawValue}
}
