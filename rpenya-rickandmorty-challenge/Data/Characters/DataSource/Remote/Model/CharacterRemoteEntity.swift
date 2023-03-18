//
//  CharacterRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct CharacterRemoteEntity: Decodable, Identifiable {
    let id: Int?
    let name: String?
    let status: String?
    let species: String?
    let type: String?
    let origin: OriginRemoteEntity?
    let location: LocationRemoteEntity?
    let gender: String?
    let imageUrl: String?
    let episodes: [String]?
    
    init(id: Int?, name: String?, status: String?, species: String?, type: String?, origin: OriginRemoteEntity?, location: LocationRemoteEntity?, gender: String?, imageUrl: String?, episodes: [String]?) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.origin = origin
        self.location = location
        self.gender = gender
        self.imageUrl = imageUrl
        self.episodes = episodes
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case status = "status"
        case species = "species"
        case type = "type"
        case gender = "gender"
        case origin = "origin"
        case location = "location"
        case imageUrl = "image"
        case episodes = "episode"
    }
}

extension CharacterRemoteEntity {
    func transformToDomain() -> Character? {
        guard let id = id,
                let name = name,
                let imageUrl = imageUrl else { return nil }
        var statusenum: Status = .unknown
        if let status = status {
            statusenum = Status(rawValue: status)
        }
        var genderenum: Gender = .unknown
        if let gender = gender {
            genderenum = Gender(rawValue: gender)
        }
        var domainEpisodes: [String] = []
        if let episodes = episodes {
            domainEpisodes = episodes.compactMap { $0.getURLLastComponent() }
        }
        return Character(id: String(id), name: name, status: statusenum, species: species, type: type, gender: genderenum, originName: origin?.name, locationName: location?.name, imageUrl: imageUrl, episodes: domainEpisodes)
    }
}
