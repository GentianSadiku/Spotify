//
//  DummyData.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import Foundation

struct DummyData: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var subTitle: String?
    
    static let topSection: [DummyData] = [
        DummyData(imageName: "DeepHouse", title: "Deep House"),
        DummyData(imageName: "kidCudi", title: "Man on the Moon III"),
        DummyData(imageName: "RabbitHole", title: "Rabbit Hole"),
        DummyData(imageName: "Eminem", title: "Recovery"),
        DummyData(imageName: "TopGamingTracks", title: "Top Gaming Tracks"),
        DummyData(imageName: "JCole", title: "Forest Hill Drive")
    ]
    
    static let recentlyPlayedSection: [DummyData] = [
        DummyData(imageName: "RabbitHole", title: "Rabbit Hole"),
        DummyData(imageName: "Eminem", title: "Recovery"),
        DummyData(imageName: "TopGamingTracks", title: "Top Gaming Tracks"),
        DummyData(imageName: "JCole", title: "Forest Hill Drive")
    ]
    
    static let topPodcastsSection: [DummyData] = [
        DummyData(imageName: "JoeRogan", title: "The Joe Rogan Experience", subTitle: "The official podcast of commedian Joe Rogan"),
        DummyData(imageName: "Views", title: "Views with David Dobrik and Jason Nash", subTitle: "This is weekly podcast with David and Jason"),
        DummyData(imageName: "TimFerris", title: "The Tim Ferriss Show", subTitle: "Tim Ferriss is a self-experimenter and bestselling author"),
    ]
    
    static let popularPlaylistsSection: [DummyData] = [
        DummyData(imageName: "DeepHouse", title: "Deep House", subTitle: "The best Deep House & Electronic Dance Music in 2021"),
        DummyData(imageName: "TopGamingTracks", title: "Top Gaming Tracks", subTitle: "The tracks for game lovers"),
        DummyData(imageName: "DanceParty", title: "Dance Party", subTitle: "Move your feet on New Year's Eve!"),
        DummyData(imageName: "OldSchoolRap", title: "Old School Rap", subTitle: ""),
    ]
    
    static let popularAlbumSection: [DummyData] = [
        DummyData(imageName: "Album1", title: "JACKBOYS", subTitle: "JACKBOYS, Travis Scott"),
        DummyData(imageName: "Album2", title: "Legends Never Die", subTitle: "Juice WRLD"),
        DummyData(imageName: "Album3", title: "After Hours", subTitle: "The Weeknd"),
        DummyData(imageName: "Album4", title: "ASSTROWORLD", subTitle: "Travis Scott"),
        DummyData(imageName: "Album5", title: "Fine Line", subTitle: "Harry Styles")
    ]
}
