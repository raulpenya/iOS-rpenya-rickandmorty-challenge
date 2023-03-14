//
//  MockCharactersPage.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Domain

struct MockCharactersPage {
    static func givenCharactersPage() -> CharactersPage {
        return CharactersPage(character: [MockCharacter.givenCharacter1(), MockCharacter.givenCharacter2()], pageInfo: MockPageInfo.givenPageInfo())
    }
}
