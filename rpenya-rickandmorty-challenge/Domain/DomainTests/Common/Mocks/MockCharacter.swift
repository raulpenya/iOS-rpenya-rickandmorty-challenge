//
//  MockCharacter.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Domain

struct MockCharacter {
    static let id1: String = "821"
    static let name1: String = "Gotron"
    static let status1: Status = .unknown
    static let species1: String = "Robot"
    static let type1: String = "Ferret Robot"
    static let gender1: Gender = .genderless
    static let origin1: String = "Earth (Replacement Dimension)"
    static let location1: String = "Earth (Replacement Dimension)"
    static let imageUrl1: String = "https://rickandmortyapi.com/api/character/avatar/821.jpeg"
    
    static let id2: String = "822"
    static let name2: String = "Young Jerry"
    static let status2: Status = .unknown
    static let species2: String = "Human"
    static let type2: String = ""
    static let gender2: Gender = .male
    static let origin2: String = "Earth (Unknown dimension)"
    static let location2: String = "Earth (Unknown dimension)"
    static let imageUrl2: String = "https://rickandmortyapi.com/api/character/avatar/822.jpeg"
    
    static func givenCharacter1() -> Character {
        return Character(id: id1, name: name1, status: status1, species: species1, type: type1, gender: gender1, originName: origin1, locationName: location1, imageUrl: imageUrl1)
    }
    
    static func givenCharacter2() -> Character {
        return Character(id: id2, name: name2, status: status2, species: species2, type: type2, gender: gender2, originName: origin2, locationName: location2, imageUrl: imageUrl2)
    }
}
