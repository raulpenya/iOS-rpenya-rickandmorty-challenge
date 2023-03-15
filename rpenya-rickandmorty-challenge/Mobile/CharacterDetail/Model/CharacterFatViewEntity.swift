//
//  CharacterFatViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation
import Domain

struct CharacterFatViewEntity {
    let id: String
    let name: String
    let status: Status
    let species: String?
    let type: String?
    let gender: Gender
    let originName: String?
    let locationName: String?
    let imageUrl: String
}
