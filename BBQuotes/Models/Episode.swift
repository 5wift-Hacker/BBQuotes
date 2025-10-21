//
//  Episode.swift
//  BBQuotes
//
//  Created by John Newman on 18/9/2025.
//

import Foundation

struct Episode: Decodable {
    let episode: Int // S1 E1 = 101 S5 E12 = 512
    let title: String
    let image: URL
    let synopsis: String
    let writtenBy: String
    let directedBy: String
    let airDate: String
    
    var seasonEpisode: String {
        "Season \(episode / 100) Episode \(episode % 100)"
    }
}
