//
//  CharacterRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct CharacterRemoteEntity: Decodable, Equatable {
    let id: String?
    let name: String?
    let status: String?
    let species: String?
    let type: String?
    let origin: OriginRemoteEntity?
    let location: LocationRemoteEntity?
    let gender: String?
    let imageUrl: String?
    
    init(id: String?, name: String?, status: String?, species: String?, type: String?, origin: OriginRemoteEntity?, location: LocationRemoteEntity?, gender: String?, imageUrl: String?) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.origin = origin
        self.location = location
        self.gender = gender
        self.imageUrl = imageUrl
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = container.decodeIntAsStringIfPresent(forKey: .id)
        name = try? container.decodeIfPresent(String.self, forKey: .name)
        status = try? container.decodeIfPresent(String.self, forKey: .status)
        species = try? container.decodeIfPresent(String.self, forKey: .species)
        type = try? container.decodeIfPresent(String.self, forKey: .type)
        gender = try? container.decodeIfPresent(String.self, forKey: .gender)
        origin = try? container.decodeIfPresent(OriginRemoteEntity.self, forKey: .origin)
        location = try? container.decodeIfPresent(LocationRemoteEntity.self, forKey: .location)
        imageUrl = try? container.decodeIfPresent(String.self, forKey: .imageUrl)
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
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }
}

extension CharacterRemoteEntity {
    func transformToDomain() -> Character? {
        guard let id = id, let name = name, let imageUrl = imageUrl else { return nil }
        var statusenum: Status = .unknown
        if let status = status {
            statusenum = Status(rawValue: status)
        }
        var genderenum: Gender = .unknown
        if let gender = gender {
            genderenum = Gender(rawValue: gender)
        }
        return Character(id: id, name: name, status: statusenum, species: species ?? "", type: type ?? "", gender: genderenum, origin: origin?.name ?? "", location: location?.name ?? "", imageUrl: imageUrl)
    }
}
