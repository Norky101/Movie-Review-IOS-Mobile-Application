//
//  Album.swift
//  Project2 P2
//
//  Created by Noah Pilkington on 3/15/23.
//

import Foundation

struct AlbumSearchResponse: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let poster_path: URL
}


