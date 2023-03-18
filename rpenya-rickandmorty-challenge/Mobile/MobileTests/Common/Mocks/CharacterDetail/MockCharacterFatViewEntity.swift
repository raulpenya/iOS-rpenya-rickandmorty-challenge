//
//  MockCharacterFatViewEntity.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
import Domain
@testable import rpenya_rickandmorty_challenge

struct MockCharacterFatViewEntity {
    
    static let id1 = "1"
    static let name1 = "Morty Smith"
    static let status1 = Status.alive
    static let species1 = "Human"
    static let type1 = ""
    static let gender1 = Gender.female
    static let originName1 = "Citadel of Ricks"
    static let locationName1 = "Earth (C-137)"
    static let imageUrl1 = "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
    static let episodes1: [String] = ["1","2","3"]
    
    static let id2 = "2"
    static let name2 = "Gotron"
    static let status2 = Status.dead
    static let species2 = "Human"
    static let type2 = "FerretRobot"
    static let gender2 = Gender.male
    static let originName2 = "Earth(ReplacementDimension)"
    static let locationName2 = "Earth(ReplacementDimension)"
    static let imageUrl2 = "https://rickandmortyapi.com/api/character/avatar/2.jpeg"
    static let episodes2: [String] = ["5","6","7"]
    
    static func givenCharacterFat1() -> CharacterFatViewEntity {
        return CharacterFatViewEntity(id: id1, name: name1, status: status1, species: species1, type: type1, gender: gender1, originName: originName1, locationName: locationName1, imageUrl: imageUrl1, episodes: episodes1)
    }
    
    static func givenCharacterFat2() -> CharacterFatViewEntity {
        return CharacterFatViewEntity(id: id2, name: name2, status: status2, species: species2, type: type2, gender: gender2, originName: originName2, locationName: locationName2, imageUrl: imageUrl2, episodes: episodes2)
    }
}
