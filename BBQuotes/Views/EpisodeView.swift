//
//  EpisodeView.swift
//  BBQuotes
//
//  Created by John Newman on 18/9/2025.
//

import SwiftUI

struct EpisodeView: View {
    
    let episode: Episode
    
    var body: some View {
        
                
                VStack(alignment: .leading) {
                    Text(episode.title)
                        .font(.largeTitle)
                    Text(episode.seasonEpisode)
                        .font(.title2)
                    AsyncImage(url: episode.image) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(.rect(cornerRadius: 15))
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Text(episode.synopsis)
                        .font(.title3)
                        .minimumScaleFactor(0.5)
                        .padding(.bottom, 20)
                    
                    Text("Written by \(episode.writtenBy)")
                    Text("Directed by \(episode.directedBy)")
                    Text("Aired: \(episode.airDate)")
                }
        .padding()
        .glassEffect(.regular, in: .rect(cornerRadius: 15))
        .padding()
    }
}

#Preview {
    EpisodeView(episode: ViewModel().episode)
}
