//
//  DeveloperPreview.swift
//  Domus
//
//  Created by Tanish Rana on 01/05/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 1170,
            numberOfBedrooms: 2,
            numberOfBaths: 2,
            rent: 2150,
            latitude: 45.67940,
            longitude: -111.03210,
            imageURLs: ["listing-1.1", "listing-1.2", "listing-1.3", "listing-1.4", "listing-1.5"],
            address: "3079 N 27th Ave",
            city: "Bozeman",
            state: "Montana",
            title: "Madison Park",
            shortlists: 47,
            keyFeatures: [.WiFi, .AirConditioning, .PetFriendly, .Parking, .AlarmSystem]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 1684,
            numberOfBedrooms: 3,
            numberOfBaths: 3,
            rent: 7750,
            latitude: 26.12416,
            longitude: -80.14305,
            imageURLs: ["listing-2.1", "listing-2.2", "listing-2.3", "listing-2.4", "listing-2.5"],
            address: "500 E Las Olas Blvd",
            city: "Fort Lauderdale",
            state: "Florida",
            title: "Icon Las Olas",
            shortlists: 13,
            keyFeatures: [.WiFi, .PetFriendly, .Parking, .AlarmSystem]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 580,
            numberOfBedrooms: 1,
            numberOfBaths: 1,
            rent: 1375,
            latitude: 32.88063,
            longitude: -96.77069,
            imageURLs: ["listing-3.1", "listing-3.2", "listing-3.3", "listing-3.4", "listing-3.5"],
            address: "10550 N Central Expy",
            city: "Dallas",
            state: "Texas",
            title: "The Mark",
            shortlists: 26,
            keyFeatures: [.WiFi]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 1263,
            numberOfBedrooms: 3,
            numberOfBaths: 2,
            rent: 9950,
            latitude: 40.65101,
            longitude: -73.94570,
            imageURLs: ["listing-4.1", "listing-4.2", "listing-4.3", "listing-4.4", "listing-4.5"],
            address: "60 Wharf Dr",
            city: "Brooklyn",
            state: "New York",
            title: "West Wharf",
            shortlists: 9,
            keyFeatures: [.WiFi, .AirConditioning, .PetFriendly, .AlarmSystem]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 1379,
            numberOfBedrooms: 3,
            numberOfBaths: 2,
            rent: 6200,
            latitude: 41.01311,
            longitude: -73.98372,
            imageURLs: ["listing-5.1", "listing-5.2", "listing-5.3", "listing-5.4", "listing-5.5"],
            address: "18 Park Ave",
            city: "Old Tappan",
            state: "New Jersey",
            title: "Park & Arbor",
            shortlists: 23,
            keyFeatures: [.PetFriendly, .AlarmSystem]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 1506,
            numberOfBedrooms: 4,
            numberOfBaths: 2,
            rent: 3650,
            latitude: 41.88372,
            longitude: -87.63238,
            imageURLs: ["listing-6.1", "listing-6.2", "listing-6.3", "listing-6.4", "listing-6.5"],
            address: "1413-15 E 57th Dr",
            city: "Chicago",
            state: "Illinois",
            title: "1413-15 E. 57th",
            shortlists: 84,
            keyFeatures: [.WiFi, .AirConditioning, .PetFriendly, .Parking]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 390,
            numberOfBedrooms: 1,
            numberOfBaths: 1,
            rent: 2245,
            latitude: 33.98228,
            longitude: -118.46557,
            imageURLs: ["listing-7.1", "listing-7.2", "listing-7.3", "listing-7.4", "listing-7.5"],
            address: "1720 Pacific Ave",
            city: "Venice",
            state: "California",
            title: "Windward Village Apartments",
            shortlists: 3,
            keyFeatures: [.PetFriendly]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 906,
            numberOfBedrooms: 1,
            numberOfBaths: 2,
            rent: 2254,
            latitude: 32.77557,
            longitude: -96.79560,
            imageURLs: ["listing-8.1", "listing-8.2", "listing-8.3", "listing-8.4", "listing-8.5"],
            address: "7425 La Vista Dr",
            city: "Dallas",
            state: "Texas",
            title: "Lakewood Flats",
            shortlists: 21,
            keyFeatures: [.WiFi, .AirConditioning, .PetFriendly, .Parking]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 1865,
            numberOfBedrooms: 3,
            numberOfBaths: 3,
            rent: 3800,
            latitude: 45.67940,
            longitude: -111.03210,
            imageURLs: ["listing-9.1", "listing-9.2", "listing-9.3", "listing-9.4", "listing-9.5"],
            address: "2742 Hedgerow Ct",
            city: "Bozeman",
            state: "Montana",
            title: "2742 Hedgerow Ct",
            shortlists: 88,
            keyFeatures: [.WiFi, .AirConditioning, .PetFriendly, .Parking, .AlarmSystem]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUID: NSUUID().uuidString,
            ownerName: "John Smith",
            footage: 750,
            numberOfBedrooms: 1,
            numberOfBaths: 1,
            rent: 3200,
            latitude: 40.65101,
            longitude: -73.94570,
            imageURLs: ["listing-10.1", "listing-10.2", "listing-10.3", "listing-10.4", "listing-10.5"],
            address: "860 Putnam Ave",
            city: "Brooklyn",
            state: "New York",
            title: "860 Putnam Ave",
            shortlists: 63,
            keyFeatures: [.WiFi, .AirConditioning, .AlarmSystem]
        )
    ]
}
